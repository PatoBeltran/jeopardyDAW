class GamesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
    @topics = Topic.all
    @semesters = Semester.all
    @players = Player.all
    @teams = Team.all
    if @game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    end
  end

  def update
    @game = Game.find(params[:id])
    @topics = Topic.all
    @semesters = Semester.all
    @players = Player.all
    @teams = Team.all
    if @game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    end
    if @game.update_attributes(game_params)
      redirect_to [current_user, @game], notice: "Game updated successfully"
    else
      render :edit
    end

  end

  def new
    @game = current_user.games.new
    @topics = Topic.all
    @semesters = Semester.all
    @players = Player.all
    @teams = Team.all
  end

  def create
    @game = current_user.games.new(game_params)
    @topics = Topic.all
    @semesters = Semester.all
    @players = Player.all
    @teams = Team.all
    if @game.save
      redirect_to [current_user, @game], notice: "Game created successfully"
    else
      render :new
    end
  end

  def destroy
    Game.find(params[:id]).destroy
    redirect_to User.find(params[:user_id]), notice: "Game deleted."
  end

  def add_players
    @game = Game.find(params[:id])
    if @game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    end
  end

  def added_player
    @game = Game.find(params[:id])
    if @game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    end
    if params[:member][:type] == "team"
      @player_or_team = Team.new(name: params[:member][:name])
    else
      @player_or_team = Player.new(name: params[:member][:name])
      @teamp = TeamPlayer.new(team: Team.find(params[:member][:team]), player:@player_or_team) if params[:member][:team].present?
    end

    if @player_or_team.save
      @teamp.save  if params[:member][:type] == "player" && params[:member][:team].present?
      @member = GameMember.create(memberable: @player_or_team, game: @game) if (params[:member][:type] == "player")^(params[:member][:team].present?) || (params[:member][:type] == "team")
      respond_to do |format|
        format.html {  redirect_to add_players_user_game(current_user, @game), notice: "Player added." }
        format.js
      end
    else
      render :add_players
    end
  end

  def play_game
    @game = Game.find(params[:id])

    if @game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    end

    @game.members.map{|e| @game.members.destroy(e) if e.memberable_type == "Team" && e.memberable.players.count == 0}
    if @game.members.empty?
      redirect_to [current_user, @game], notice: "This game has already been played"
    else
      @turns = @game.members.map{|a| a.memberable.name}
    end
  end

  def end_game
    @game = Game.find(params[:id])
    if @game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    else
      Report.create(game: @game)
      redirect_to [current_user, @game], notice: "Game finished."
    end
  end

  def teams
    @teams = GameMember.where(game: @game, memberable_type: 'Team').map{ |team| [team.memberable.name, team.memberable_id]}.unshift(['', ''])
    respond_to do |format|
      format.json { render json: @teams }
    end
  end

  def add_answer
    game = Game.find(params[:id])
    if game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    end
    member = game.members[game.turn % game.members.length]
    Answer.create(game: game, game_member: member, points: params[:points], clue_id: params[:clue_id])
    @clue = Clue.find(params[:clue_id])
  end

  def next_turn
    @game = Game.find(params[:id])
    if @game.report.present?
      redirect_to [current_user, @game], notice: "This game has already been played"
    end
    @game.next_turn
    head :ok
  end

  private

  def game_params
    params.require(:game).permit(:topic_id, :semester_id, topic_attributes: [:name, :_destroy, :id, categories_attributes: [:name, :_destroy, :id, clues_attributes: [:title, :points, :_destroy, :id, :question]]], semester_attributes: [:title, :_destroy, :id])
  end
end
