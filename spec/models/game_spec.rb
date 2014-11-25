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

require 'rails_helper'

RSpec.describe Game, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
