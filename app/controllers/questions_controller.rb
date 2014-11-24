class QuestionsController < ApplicationController
  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(question_params)
      redirect_to root_path, notice: "The question has been updated."
    else
      render :edit
    end
  end

  def new
    @question = Question.new
  end


  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to root_path, notice: "The question has been created."
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:title)
  end
end
