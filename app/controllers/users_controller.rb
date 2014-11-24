class UsersController < Devise::RegistrationsController
  skip_before_filter :should_change_password, only: [:change_password, :password_changed]
  before_action :authenticate_user!, except: [:new, :create]
  load_and_authorize_resource

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    password = User.generate_password
    @user.password = password
    @user.password_confirmation = password

    if @user.save
      UserNotifier.send_signup_email(@user, password).deliver
      redirect_to :root, notice: "We have sent you an email with your password."
    else
      render :new
    end
  end

  def change_password
    @user = current_user
  end

  def password_changed
    @user = current_user
    if @user.update_attributes(user_params) && params[:user][:password] && params[:user][:password_confirmation]
      @user.update_attributes(should_change_password: false)
      sign_in(@user, :bypass => true)
      redirect_to @user, notice: "Password changed successfully."
    else
      render :change_password
    end
  end

  def show
    @user = current_user
    @games = @user.games
    @reports = nil
    @topics = Topic.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation);
  end
end
