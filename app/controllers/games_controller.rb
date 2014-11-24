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
  end

  def update
    @game = Game.find(params[:id])
    @topics = Topic.all
    @semesters = Semester.all
    @players = Player.all
    @teams = Team.all
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
  end

  def added_player
    @game = Game.find(params[:id])
    if params[:member][:type] == "team"
      @player_or_team = Team.new(name: params[:member][:name])
    else
      @player_or_team = Player.new(name: params[:member][:name])
      @teamp = TeamPlayer.new(team: Team.find(params[:member][:team]), player:@player_or_team) if params[:member][:team].present?
    end

    if @player_or_team.save
      @teamp.save  if params[:member][:type] == "player" && params[:member][:team].present?
      @member = GameMember.create(memberable: @player_or_team, game: @game) if  (!(params[:member][:type] == "player" ^ params[:member][:team].present?) || (!params[:member][:type] == "player" && params[:member][:team].present?))
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
    @game.members.map{|e| a.members.destroy(e) if e.memberable_type = "Team" && e.memberable.players.count > 0}
    if @game.members.empty?
      redirect_to @game, notice: "You need to add players to game before playing."
    end
  end

  def end_game

  end

  def teams
    @teams = GameMember.where(game: @game, memberable_type: 'Team').map{ |team| [team.memberable.name, team.memberable_id]}.unshift(['', ''])
    respond_to do |format|
      format.json { render json: @teams }
    end
  end

  private

  def game_params
    params.require(:game).permit(:topic_id, :semester_id, topic_attributes: [:name, :_destroy, :id, categories_attributes: [:name, :_destroy, :id, clues_attributes: [:title, :points, :_destroy, :id, question_attributes: [:title, :_destroy,  :id]]]], semester_attributes: [:title, :_destroy, :id])
  end
end
