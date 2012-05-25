# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.new(:title => "Weekend")
c1.save

c2 = Category.new(:title => "TO Read")
c2.save

c3 = Category.new(:title => "TO Go")
c3.save

n = Note.new(:header => "What?", :body => "Wait, stop don't", :category_id => c1)
n.save 


n = Note.new(:header => "MOvie !", :body => "Dictator in cinema xyz", :category_id => c3)
n.save 

n = Note.new(:header => "Book", :body => "Hitchhiking in galaxy", :category_id => c2)
n.save 