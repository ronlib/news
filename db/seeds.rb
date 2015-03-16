# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

catagories = Catagory.create([{name: 'Sports', description: 'Sports stuff'}])
catagory = Catagory.where(:name => 'Sports').first
puts catagory.inspect
Article.create([{name: 'How to become a superstar',
                          content: 'Just do as best you can.',
                          catagory: catagory}])
puts articles.inspect
