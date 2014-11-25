class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :game_id
      t.integer :game_member_id
      t.integer :clue_id
      t.integer :points

      t.timestamps
    end
  end
end
