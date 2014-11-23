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

FactoryGirl.define do
  factory :question do
    clue_id 1
title "MyString"
  end

end
