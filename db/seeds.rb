IMAGES = %w(https://a0.muscache.com/im/pictures/f86ea14e-28e5-4fe1-a161-941fa3516406.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/51c82da7-bccc-4ec2-ab44-e5ca6278bd91.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/103981930/6b9d06f7_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/53851032/decfda84_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/52159509/5acc860d_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/59365499/96d38388_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/23991343/89872a3f_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/4913407/6ceaefb6_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/49398520/a3b3f151_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/65441227/bb1eb2dd_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/1141535/da4b9b6b_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/69769670/1a1c424a_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/7255437/22cc8c2d_original.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/763ad5c8-c951-43e0-b926-4a98c25c45e8.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/881d76c6-4de6-4808-9f0b-36462b6c48a2.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/7cc3c855-f90e-4d0f-9b13-3b5c2a3c4bad.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg?aki_policy=large
https://a0.muscache.com/im/pictures/41671788/112cfec6_original.jpg?aki_policy=large)

NAMES = %w(Albert Bella Carlos David George Halo)
GENDERS = %w(M F U)

10.times do
  User.create({name: Faker::Name.name, age: rand(10..80), gender: GENDERS.sample, profile_image: Faker::Avatar.image})
end

10.times do
  Homestay.create({cover_image: IMAGES.sample, title: Faker::Lorem.sentence, user: User.find(rand(1..10)),
                  room_type: 'Single', guest_no: rand(1..10), bed_room: ::Faker::Boolean.boolean,
                  description: Faker::Lorem.paragraph, price: Faker::Number.decimal, weekly_discount: 15,
                  monthly_discount: 20})
end

40.times do
  UserReview.create({user_id: rand(1..10), lodging_id: rand(1..10), lodging_type: 'Homestay', comment: Faker::Lorem.sentence,
                     rating: rand(1..5)})
end

40.times do |i |
  Photo.create({name: "Photo no.#{i}", url: IMAGES.sample, lodging_id: rand(1..10), lodging_type: 'Homestay'})
end
