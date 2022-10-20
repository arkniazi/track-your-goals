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
require 'rails_helper'

RSpec.describe AlertType, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title).case_insensitive }
  it { should validate_presence_of(:interval) }
end
