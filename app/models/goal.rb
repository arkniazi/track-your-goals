# frozen_string_literal: true

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
class Goal < ApplicationRecord
  validates :name, presence: true
  validates :start_at, presence: true
  has_many :goal_alerts, dependent: :destroy
  # belongs_to :alert_type
  belongs_to :alert
end
