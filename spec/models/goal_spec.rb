# == Schema Information
#
# Table name: goals
#
#  id                      :bigint           not null, primary key
#  name                    :string
#  desc                    :string
#  start_at                :datetime
#  end_at                  :datetime
#  active                  :boolean          default(TRUE)
#  completed               :boolean          default(FALSE)
#  parent_id               :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  alert_id                :integer
#  last_alert_generated_at :datetime
#
require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:goal) {create(:goal, :with_alert_type)}

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:start_at) }
  it { should belong_to(:alert_type) } 
  it { should have_many(:goal_alerts).dependent(:destroy) } 
end
