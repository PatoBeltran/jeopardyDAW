class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can [:new, :create], User

    can [:edit, :update, :change_password, :password_changed, :show], User do |u|
      u.id == user.id
    end

    can [:new, :create], Game

    can [:edit, :update, :show, :destroy, :play_game, :add_players, :added_player, :teams], Game do |game|
      game.user_id == user.id
    end

  end
end
