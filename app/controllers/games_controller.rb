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

  private

  def game_params
    params.require(:game).permit(:topic_id, :semester_id, topic_attributes: [:name, :_destroy, :id, categories_attributes: [:name, :_destroy, :id, clues_attributes: [:title, :points, :_destroy, :id, question_attributes: [:title, :_destroy,  :id]]]], semester_attributes: [:title, :_destroy, :id])
  end
end
