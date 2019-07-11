# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)
Movie.create(title: "Star Wars",
             description: "Aliens killing each other",
             genre: "Scify",
             price: 9.99)

Movie.create(title: "Apocalipsys Now",
             description: "People killing each other",
             genre: "Action/Drama",
             price: 10.99)

Movie.create(title: "Avatar",
             description: "Aliens and people killing each other",
             genre: "Scify",
             price: 19.99)
