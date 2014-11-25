# == Schema Information
#
# Table name: clues
#
#  id          :integer          not null, primary key
#  category_id :integer
#  title       :string(255)
#  points      :integer
#  question    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Clue < ActiveRecord::Base
  belongs_to :category
  validate :title, :category, :points, presence: true
  validate :points, numericality: true
  has_many :answer

  def answered_on_game(game)
    true
  end
end
