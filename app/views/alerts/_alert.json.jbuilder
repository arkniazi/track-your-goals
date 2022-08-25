# frozen_string_literal: true

json.extract! alert, :id, :created_at, :updated_at
json.url alert_url(alert, format: :json)
