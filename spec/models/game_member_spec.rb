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

require 'rails_helper'

RSpec.describe GameMember, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
