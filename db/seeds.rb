# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

u1=User.create!(email:"isheninau@gmail.com", password:"Vlad2003")
# u2=User.create()
Task.create([
    {title:"homework", priority: 11, user_id: u1.id},
    {title:"homework", priority: 1, user_id: u1.id},
    {title:"homework", priority: 5, user_id: u1.id}
]
)
TimeTable.create!([
    {title: "School", weekday:1, start_hour:9, start_minute: 15, end_hour: 15, end_minute: 30, user_id: u1.id},
    {title: "ITMO", weekday:1, start_hour:17, start_minute: 45, end_hour: 20, end_minute: 30, user_id: u1.id},
    {title: "School", weekday:2, start_hour:9, start_minute: 15, end_hour: 14, end_minute: 30, user_id: u1.id},
    {title: "Russian class", weekday:2, start_hour:17, start_minute: 45, end_hour: 19, end_minute: 30, user_id: u1.id},
    {title: "School", weekday:3, start_hour:9, start_minute: 15, end_hour: 15, end_minute: 30, user_id: u1.id},
    {title: "Walk", weekday:3, start_hour:15, start_minute: 45, end_hour: 17, end_minute: 30, user_id: u1.id},
    {title: "School", weekday:4, start_hour:9, start_minute: 15, end_hour: 15, end_minute: 30, user_id: u1.id},
    {title: "Walk", weekday:5, start_hour:15, start_minute: 45, end_hour: 17, end_minute: 30, user_id: u1.id}
])