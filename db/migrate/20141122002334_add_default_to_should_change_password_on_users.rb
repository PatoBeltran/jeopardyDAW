class AddDefaultToShouldChangePasswordOnUsers < ActiveRecord::Migration
  def change
    change_column(:users, :should_change_password, :boolean, default: true)
  end
end
