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
require 'rails_helper'

RSpec.describe GoalAlert, type: :model do
  let(:goal_alert) { create(:goal_alert, :with_goal) }
  
  it { should validate_presence_of(:question) }
  it { should belong_to(:goal) } 
  
end
