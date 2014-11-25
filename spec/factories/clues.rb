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

FactoryGirl.define do
  factory :clue do
    category_id 1
title "MyString"
points 1
  end

end
