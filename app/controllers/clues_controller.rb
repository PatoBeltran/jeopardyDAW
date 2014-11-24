class CluesController < ApplicationController
  def edit
    @clue = Clue.find(params[:id])
    @categories = Category.all
  end

  def update
    @clue = Clue.find(params[:id])
    @categories = Category.all

    if @clue.update_attributes(clue_params)
      redirect_to root_path, notice: "The clue has been updated."
    else
      render :edit
    end
  end

  def new
    @clue = Clue.new
    @categories = Category.all
  end

  def create
    @clue = Clue.new(clue_params)
    @categories = Category.all

    if @clue.save
      redirect_to root_path, notice: "The clue has been created."
    else
      render :new
    end
  end

  def index
    @clues = Clue.all
  end

  private

  def clue_params
    params.require(:clue).permit(:title, :points, :category_id, :id, question_attributes: [:title, :_destroy,  :id])
  end
end
