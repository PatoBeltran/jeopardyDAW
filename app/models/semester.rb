# == Schema Information
#
# Table name: semesters
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Semester < ActiveRecord::Base
  has_many :games

  validate :title, presence: true
end
