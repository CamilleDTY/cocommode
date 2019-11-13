puts 'Cleaning database...'
Item.destroy_all
User.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    first_name: 'carole',
    last_name:  'dudu',
    email: 'carole@gmail.com',
    password: 'testcarole',
    phone_number: '0601010101',
    address: '28 rue oberkampf 75011 Paris',
    office_address: '2 rue des renaudes 75017 Paris',
    remote_profile_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573569094/michael-dam-mEZ3PoFGs_k-unsplash_fzuekr.jpg"
  },
    {
    first_name: 'alex',
    last_name:  'leuleu',
    email: 'alex@gmail.com',
    password: 'testalex',
    phone_number: '0602020202',
    address: '3 Rue le Corbusier, Boulogne-Billancourt',
    office_address: '15 Rue Paul Lelong, Paris',
    remote_profile_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573659588/sandy-millar-9bYTpXfiKNM-unsplash_p60iwd.jpg"
  },
  {
    first_name: 'sophie',
    last_name:  'lala',
    email: 'sophie@gmail.com',
    password: 'testsophie',
    phone_number: '0603030303',
    address: '35 Rue Marcadet, Paris',
    office_address: '16 Rue Davioud, Paris',
    remote_profile_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573659719/edward-cisneros-_H6wpor9mjs-unsplash_vt9prv.jpg"
  }
]

User.create!(users_attributes)
puts 'Users created!'

puts 'Creating items...'
items_attributes = [
  {
    category:     'Occasions habillées',
    description:  'Robe bleue idéale pour mariage',
    size: "38",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557666/bluedress_tjdoqu.jpg",
    user_id: User.first[:id]
  },
  {
    category:     'Occasions habillées',
    description:  'Jupe longue rose habillée',
    size: "L",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557687/pinkskirt_x1vm0f.jpg",
    user_id: User.first[:id]
  },
  {
    category:     'Occasions habillées',
    description:  'Costume gris',
    size: "42",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573557676/greysuits_ay3hoc.jpg",
    user_id: User.last[:id]
  },
    {
    category:     'Sport',
    description:  'Baskets running',
    size: "39",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573660048/chuttersnap-4JHMt29fvj8-unsplash_z77giu.jpg",
    user_id: User.last[:id]
  },
    {
    category:     'Sport',
    description:  'Anorak ski',
    size: "L",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573660154/alasdair-elmes-7gifivYLnzc-unsplash_zgmytg.jpg",
    user_id: User.last[:id]
  },
    {
    category:     'Sport',
    description:  'Legging et tapis de yoga',
    size: "M",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573660238/form-xwsfPsY007A-unsplash_yzebrk.jpg",
    user_id: User.first[:id]
  },
    {
    category:     'Déguisements',
    description:  'Masque Dark Vador',
    size: "unique",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573660467/jose-martinez-VzoMkhpPmJE-unsplash_huw18t.jpg",
    user_id: User.last[:id]
  },
    {
    category:     'Déguisements',
    description:  'Costume Clown',
    size: "unique",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573660468/levi-saunders-m_PB-FYlR_Q-unsplash_njzaag.jpg",
    user_id: User.last[:id]
  },
    {
    category:     'Déguisements',
    description:  'Costume licorne',
    size: "unique",
    remote_main_picture_url: "https://res.cloudinary.com/dvc6dt55q/image/upload/v1573660486/andrea-tummons-rHVYk9BbRKk-unsplash_zc3icx.jpg",
    user_id: User.first[:id]
  }
]
Item.create!(items_attributes)
puts 'Items created!'

puts 'Finished!'
