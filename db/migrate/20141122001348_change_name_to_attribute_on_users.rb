class ChangeNameToAttributeOnUsers < ActiveRecord::Migration
  def change
    rename_column :users, :passwordChanges, :should_change_password
  end
end
