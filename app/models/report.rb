# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Report < ActiveRecord::Base
  belongs_to :game

  validate :game, presence: true
end
