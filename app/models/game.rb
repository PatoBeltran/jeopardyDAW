# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  semeter_id :integer
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Game < ActiveRecord::Base
  belongs_to :user
  has_many :game_members
  has_one :topic
  has_many :reports
  belongs_to :semester

  def members
    self.game_members
  end
end
