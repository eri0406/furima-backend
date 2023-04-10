#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 　coding: utf-8

Item.create!(
  image: ActiveStorage::Blob.create_and_upload!(io: File.open('public/images/book.jpeg'), filename:'book.jpeg'),
  name: '本',
  content: 'これは本です',
  category_id: 2,
  state_id: 2,
  load_id: 2,
  area_id: 2,
  shipping_id: 2,
  price: 1000
)
