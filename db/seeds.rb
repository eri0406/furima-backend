# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# coding: utf-8

Item.create!(
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("public/images/book.jpg")), filename: "book.jpg"),
    name: '本',
    content: 'これは本です',
    category_id: '2',
    state_id: '2',
    load_id: '2',
    area_id: '2',
    shipping_id: '2',
    price: 1000
)
