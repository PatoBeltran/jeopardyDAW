class CreateGameMembers < ActiveRecord::Migration
  def change
    create_table :game_members do |t|
      t.string :memberable_type
      t.integer :memberable_id
      t.integer :game_id

      t.timestamps
    end
  end
end
