# == Schema Information
#
# Table name: semesters
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :semester do
    title "MyString"
  end

end
