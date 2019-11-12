# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Item.destroy_all

puts 'Creating items...'
items_attributes = [
  {
    category:     'Tenue de soirée',
    description:  'Robe bleue idéale pour mariage',
    size: "38",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557666/bluedress_tjdoqu.jpg"
  },
  {
    category:     'Tenue de soirée',
    description:  'Jupe longue rose habillée',
    size: "L",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557687/pinkskirt_x1vm0f.jpg"
  },
  {
    category:     'Tenue de soirée',
    description:  'Costume gris',
    size: "42",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557676/greysuits_ay3hoc.jpg"
  }
]
Item.create!(items_attributes)
puts 'Finished!'
