class CategoriesController < ApplicationController
  def edit
    @category = Category.find(params[:id])
    @topics = Topic.all
  end

  def update
    @category = Category.find(params[:id])
    @topics = Topic.all

    if @category.update_attributes(category_params)
      redirect_to :root, notice: "The category has been updated."
    else
      render :edit
    end
  end

  def new
    @category = Category.new
    @topics = Topic.all
  end

  def create
    @category = Category.new(category_params)
    @topics = Topic.all

    if @category.save
      redirect_to root_path, notice: "The category has been created."
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :id, :topic_id, clues_attributes: [:title, :points, :_destroy, :id, question_attributes: [:title, :_destroy,  :id]])
  end
end
