# == Schema Information
#
# Table name: game_members
#
#  id              :integer          not null, primary key
#  memberable_type :string(255)
#  memberable_id   :integer
#  game_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

FactoryGirl.define do
  factory :game_member do
    memberable_type "MyString"
memberable_id 1
name "MyString"
  end

end
