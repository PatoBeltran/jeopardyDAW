# == Schema Information
#
# Table name: team_players
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  player_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe TeamPlayer, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
