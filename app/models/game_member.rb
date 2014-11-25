# == Schema Information
#
# Table name: game_members
#
#  id              :integer          not null, primary key
#  memberable_type :string(255)
#  memberable_id   :integer
#  game_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class GameMember < ActiveRecord::Base
  belongs_to :memberable, polymorphic: true, inverse_of: :game_member
  belongs_to :game
  has_many :answers
end
