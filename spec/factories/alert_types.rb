# == Schema Information
#
# Table name: alert_types
#
#  id         :integer          not null, primary key
#  title      :string
#  interval   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do

  factory :alert_type do
    title {'Daily'}
    interval { 1 }
  end
end
