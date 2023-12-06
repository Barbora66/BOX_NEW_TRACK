# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


clotes_title = "Clothes"
unless Tag.find_by(title: clotes_title)
    Tag.create!(title: clotes_title, color: "is-success", icon: "fa-solid fa-shirt")
end 

title = "Shoes"
unless Tag.find_by(title: title)
    Tag.create!(title: title, color: "is-primary", icon: "fa-solid fa-shoe-prints")
end

title = "Accessories"
unless Tag.find_by(title: title)
    Tag.create!(title: title, color: "is-link", icon: "fa-solid fa-ring")
end