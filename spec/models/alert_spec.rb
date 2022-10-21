# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe Alert, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
