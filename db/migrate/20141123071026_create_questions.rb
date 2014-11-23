class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :clue_id
      t.string :title

      t.timestamps
    end
  end
end
