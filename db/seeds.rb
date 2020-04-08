# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..20).each {|index| User.create(email: "attendee#{index}@test.com", password: "attendee_test")}

(1..5).each {|index| User.create(email: "host#{index}@test.com", password: "host_test", role: :host)}

User.create(email: 'admin@test.com', password: 'admin_test', role: :admin)
