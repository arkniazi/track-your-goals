# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AlertType.delete_all
table_name = 'alert_types'
# ---------------------
# Truncate for postgres
# ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY")
# ---------------------
# Truncate for Sqlite
ActiveRecord::Base.connection.execute("Delete from #{table_name}")
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE WHERE name='#{table_name}'")

AlertType.create!([
  {
    title: 'Daily',
    interval: 1
  },
  {
    title: 'Weekly',
    interval: 7
 },
 {
    title: 'Monthly',
    interval: 30
 }
])

# Add sample goals
Goal.create!([
  {
   name: 'Read the book daily',
   desc: 'I need to maintain reading habit',
   start_at: Time.now,
   end_at: Time.now + 365,
   alert_type_id: 1
  },
   {
   name: 'Weekly progress review',
   desc: 'Progress needs to be reviewed consistently',
   start_at: Time.now,
   end_at: Time.now + 365,
   alert_type_id: 2
  }
])