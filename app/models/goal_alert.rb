# == Schema Information
#
# Table name: goal_alerts
#
#  id           :bigint           not null, primary key
#  goal_id      :integer
#  question     :string
#  answer       :string
#  initiated_at :datetime
#  completed_at :datetime
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class GoalAlert < ApplicationRecord
  validates :question, presence: true
  belongs_to :goal
end
