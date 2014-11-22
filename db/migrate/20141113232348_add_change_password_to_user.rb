class AddChangePasswordToUser < ActiveRecord::Migration
  def change
    add_column :users, :passwordChanges, :boolean
  end
end
