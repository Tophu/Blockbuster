puts "Creating movies..."
Movie.create(title: "Star Wars",
             description: "Aliens killing each other",
             genre: "Sci-Fi",
             price: 9.99)

Movie.create(title: "Apocalipsys Now",
             description: "People killing each other",
             genre: "Action/Drama",
             price: 10.99)

Movie.create(title: "Avatar",
             description: "Aliens and people killing each other",
             genre: "Sci-Fi",
             price: 19.99)
puts "done"
