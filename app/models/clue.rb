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
  validates :title, presence: true, allow_blank: false
  validates :points, presence: true, allow_blank: false
  has_many :answer

  def answered_on_game(game)
    Answer.where(clue:self, game:game).count > 0
  end
end
