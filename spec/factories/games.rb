# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  topic_id    :integer
#  semester_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  turn        :integer          default(0)
#

FactoryGirl.define do
  factory :game do
    topic_id 1
semeter_id 1
  end

end
