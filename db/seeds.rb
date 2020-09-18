# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author1 = Author.create(name: "J. K. Rowling", age: 55)
author2 = Author.create(name: "Philip Pullman", age: 73)

Book.create(title: "Harry Potter and the Sorcerer's Stone", author: author1)
Book.create(title: "Harry Potter and the Chamber of Secrets", author1)
Book.create(title: "The Golden Compass", author: author2)
Book.create(title: "The Subtle Knife", author: author2)
