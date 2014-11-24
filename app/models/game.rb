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
#

class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_members
  belongs_to :topic
  has_many :reports
  belongs_to :semester

  validates :topic, :semester, :user, presence: true

  accepts_nested_attributes_for :topic, :semester, allow_destroy: true

  def members
    self.game_members
  end
end
