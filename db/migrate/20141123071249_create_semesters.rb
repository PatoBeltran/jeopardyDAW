class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :title

      t.timestamps
    end
  end
end
