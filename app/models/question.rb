# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  clue_id    :integer
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  belongs_to :clue
end
