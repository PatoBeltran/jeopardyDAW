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

require 'rails_helper'

RSpec.describe Clue, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
