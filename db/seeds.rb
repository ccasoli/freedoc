# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
    Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: Faker::Number.within(range: 1..20))
end

50.times do 
    Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.within(range: 1..20))
end

100.times do
    Appointment.create(doctor_id: Faker::Number.within(range: 1..50), patient_id: Faker::Number.within(range: 1..50), date: Faker::Date.between(from: 1.year.ago, to: 1.year.from_now), city_id: Faker::Number.within(range: 1..20))
end

20.times do 
    City.create(name: Faker::Address.city)
end

10.times do 
    Specialty.create(name: Faker::Creature::Animal.name)
end

100.times do
    DoctorCommunity.create(doctor_id: Faker::Number.within(range: 1..50), specialty_id: Faker::Number.within(range: 1..10))
end