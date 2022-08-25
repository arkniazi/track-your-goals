# == Schema Information
#
# Table name: goals
#
#  id                      :integer          not null, primary key
#  name                    :string
#  desc                    :string
#  start_at                :datetime
#  end_at                  :datetime
#  active                  :boolean          default(TRUE)
#  completed               :boolean          default(FALSE)
#  parent_id               :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  alert_type_id           :integer
#  last_alert_generated_at :datetime
#
FactoryBot.define do

  factory :goal do
    name { 'Read Books' }
    desc { 'Improve reading habit' }
    alert_type
  end
end
