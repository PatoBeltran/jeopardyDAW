class CluesController < ApplicationController
  def edit
    @clue = Clue.find(params[:id])
  end

  def update
    @clue = Clue.find(params[:id])

    if @clue.update_attributes(clue_params)
      redirect_to root_path, notice: "The clue has been updated."
    else
      render :edit
    end
  end

  def new
    @clue = Clue.new
  end

  def create
    @clue = Clue.new(question_params)

    if @clue.save
      redirect_to root_path, notice: "The clue has been created."
    else
      render :new
    end
  end

  private

  def clue_params
    params.require(:clue).permit(:title, :points, :id, question_attributes: [:title, :_destroy,  :id])
  end
end
