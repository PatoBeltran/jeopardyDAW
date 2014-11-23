# == Schema Information
#
# Table name: semesters
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Semester, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
