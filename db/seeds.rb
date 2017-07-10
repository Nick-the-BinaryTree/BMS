# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new
admin.email = 'admin@bananas.com'
admin.password = 'bananaKing'
admin.password_confirmation = 'bananaKing'
admin.admin = true
admin.save

user = User.new
user.email = 'user@bananas.com'
user.password = 'bananaBro'
user.password_confirmation = 'bananaBro'
user.save
