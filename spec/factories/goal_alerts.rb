# == Schema Information
#
# Table name: goal_alerts
#
#  id           :integer          not null, primary key
#  goal_id      :integer
#  question     :string
#  answer       :string
#  initiated_at :datetime
#  completed_at :datetime
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :goal_alert do 
    goal
    question { 'Have you made any progress?' }
    answer { 'Yes I have' }
    initiated_at { Time.now }
  end
end
