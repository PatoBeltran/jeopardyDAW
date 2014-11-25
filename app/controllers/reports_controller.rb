class ReportsController < ApplicationController
  def show
    @report = Report.find(params[:id])
    @answers = Answer.where(game: @report.game)
  end
end
