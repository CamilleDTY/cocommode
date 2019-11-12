# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Item.destroy_all
User.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    first_name: 'carole',
    last_name:  'dudu',
    email: 'carole@gmail.com',
    password: 'testtest',
    phone_number: '0601010101',
    address: '28 rue oberkampf 75011 Paris',
    office_address: '2 rue des renaudes 75017 Paris',
    remote_profile_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573569094/michael-dam-mEZ3PoFGs_k-unsplash_fzuekr.jpg"
  }
]

User.create!(users_attributes)
puts 'Users created!'

puts 'Creating items...'
items_attributes = [
  {
    category:     'Tenue de soirée',
    description:  'Robe bleue idéale pour mariage',
    size: "38",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557666/bluedress_tjdoqu.jpg",
    user_id: User.first[:id]
  },
  {
    category:     'Tenue de soirée',
    description:  'Jupe longue rose habillée',
    size: "L",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557687/pinkskirt_x1vm0f.jpg",
    user_id: User.first[:id]
  },
  {
    category:     'Tenue de soirée',
    description:  'Costume gris',
    size: "42",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557676/greysuits_ay3hoc.jpg",
    user_id: User.first[:id]
  }
]
Item.create!(items_attributes)
puts 'Items created!'

puts 'Finished!'
