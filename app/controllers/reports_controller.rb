class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:id])
    @answers = Answer.where(game: @report.game)
  end
  def index
    @semesters = Semester.all
  end
end
