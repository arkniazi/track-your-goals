# frozen_string_literal: true

# == Schema Information
#
# Table name: alert_types
#
#  id         :bigint           not null, primary key
#  title      :string
#  interval   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :alert_type do
    title { 'Daily' }
    interval { 1 }
  end
end
