# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  topic_id    :integer
#  semester_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  turn        :integer          default(0)
#

class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_members
  belongs_to :topic
  has_one :report
  belongs_to :semester
  has_many :answers

  validates :topic, :semester, :user, presence: true

  accepts_nested_attributes_for :topic, :semester, allow_destroy: true

  def members
    self.game_members
  end

  def next_turn
    update_attributes(turn: self.turn + 1)
  end
end
