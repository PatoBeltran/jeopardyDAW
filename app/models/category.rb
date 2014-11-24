# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  topic_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  belongs_to :topic
  has_many :clues

  validate :name, :topic, presence: true

  accepts_nested_attributes_for :clues, allow_destroy: true
end
