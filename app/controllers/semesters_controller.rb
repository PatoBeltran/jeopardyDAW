class SemestersController < ApplicationController
  def edit
    @semester = Semester.find(params[:id])
  end

  def update
    @semester = Semester.find(params[:id])

    if @semester.update_attributes(semester_params)
      redirect_to root_path, notice: "The semester has been updated."
    else
      render :edit
    end
  end

  def new
    @semester = Semester.new
  end

  def create
    @semester = Semester.new(semester_params)

    if @semester.save
      redirect_to root_path, notice: "The semester has been added."
    else
      render :new
    end
  end

  private

  def semester_params
     params.require(:semester).permit(:title)
  end
end
