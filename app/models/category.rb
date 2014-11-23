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
end
