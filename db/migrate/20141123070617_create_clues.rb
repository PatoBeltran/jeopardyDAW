class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.integer :category_id
      t.string :title
      t.integer :points

      t.timestamps
    end
  end
end
