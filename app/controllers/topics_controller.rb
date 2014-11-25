class TopicsController < ApplicationController
  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])

    if @topic.update_attributes(topic_params)
      redirect_to root_path, notice: "The topic has been updated."
    else
      render :edit
    end
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to root_path, notice: "The topic has been created."
    else
      render :new
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :id, categories_attributes: [:name, :_destroy, :id, clues_attributes: [:title, :points, :_destroy, :id, :question]])
  end
end
