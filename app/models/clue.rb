# == Schema Information
#
# Table name: clues
#
#  id          :integer          not null, primary key
#  category_id :integer
#  title       :string(255)
#  points      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Clue < ActiveRecord::Base
  belongs_to :category
  validate :title, :category, :points, presence: true
  validate :points, numericality: true
end
