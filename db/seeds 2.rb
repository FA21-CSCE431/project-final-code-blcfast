# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Member.create(name: 'Ben McClendon', email: 'benmcclendon@tamu.edu', role: 'Admin')
Member.create(name: 'Kate Fordham', email: 'kfordham@tamu.edu', role: 'Admin')
Member.create(name: 'Megan Konvicka', email: 'megan.konvicka@tamu.edu', role: 'Officer')
Member.create(name: 'William Mangin', email: 'wmangin@tamu.edu', role: 'Officer')
Member.create(name: 'Samantha Beider', email: 'samantha.beider@tamu.edu', role: 'Officer')
