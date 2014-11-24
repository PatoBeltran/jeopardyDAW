class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :topic_id
      t.integer :semester_id

      t.timestamps
    end
  end
end
