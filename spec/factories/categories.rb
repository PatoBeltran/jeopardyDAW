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

FactoryGirl.define do
  factory :category do
    name "MyString"
  end

end
