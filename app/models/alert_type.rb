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
class AlertType < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :interval, presence: true
  has_many :goals
end
