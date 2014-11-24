class PagesController < ApplicationController
  before_filter :go_to_page
  def landing
  end

  def go_to_page
    redirect_to current_user if user_signed_in?
  end
end
