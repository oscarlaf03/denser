# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.find_by(email: 'ortizg.oscar@gmail.com').nil?
  oscar = User.new(email: 'ortizg.oscar@gmail.com')
  oscar.manager = true
  oscar.password = '123123'
  oscar.save
  else
  oscar = User.find_by(email: 'ortizg.oscar@gmail.com')
  oscar.manager = true
  oscar.save
end

if User.find_by(email: 'jose.ortiz@denser.com.mx').nil?
  jose = User.new(email: 'jose.ortiz@denser.com.mx')
  jose.manager = true
  jose.password = '123123'
  jose.save
  else
  jose = User.find_by(email: 'jose.ortiz@denser.com.mx')
  jose.manager = true
  jose.save

end
puts 'users created'
puts "total users: #{User.count}"
puts 'creating product'

vaso = Product.new
vaso.name = 'Vaso deportivo'
vaso.description = 'Con este práctico y elegante vaso siempre estarás hidratado y listo para cualquier aventura'
vaso.category = 'cocina'
vaso.item_type = 'vaso'
vaso[:banner] = "image/upload/v1525393783/yepns2aa2hfjqutezecl.png"
vaso[:main_photo] = "image/upload/v1525393780/upgw7tjfhqi3hnrmmvvh.png"
vaso.measures = '20 x 25'
vaso.color = %w[ verde amarillo rojo blanco ]
vaso.capacity = 0.5
vaso.save
puts 'Created cup product'
puts "Total products created: #{Product.count}"
puts 'All tasks finished'
