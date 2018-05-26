# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..9 do
  Product.create(:modelID => 1,
                 :fabrication => 2010+i ,
                 :fuelID => 1,
                 :engineID => 1,
                 :transmisionID => 1,
                 :colorID => 1,
                 :door => "4/5",
                 :co2 => "ca 423 g/km",
                 :feature => "alloy wheels, xenon headlights, fog lights, tinted glass",
                 :other_parameter => "service book",
                 :safety => "ABS, traction control, alarm, airbags, immobilizer, anti-th, ESP, EDS, protection framework",
                 :comfort => "electric windows, electric mirrors, air conditioning, leathe upholstery, navigation system, central locking, radio / CD, power steering, onboard computer, cruise control, heated seats, rain sensor, steering wheel controls, parking sensor",
                 :moreinfo => "Lorem ipsum dolor siuaipiscing ensequa at. Maecenas eget massa at eros ornare rhoncus. In sit a enim risus, in mattis felis",
                 )
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?