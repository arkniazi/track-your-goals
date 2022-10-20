# == Schema Information
#
# Table name: alerts
#
#  id         :bigint           not null, primary key
#  title      :string
#  interval   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :alert do
    title { "MyString" }
    interval { 1 }
  end
end
