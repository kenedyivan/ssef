# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  User.create([{:username=>"akena", :email=>"kenedyakenaivan@gmail.com",:password=>"ken123nonoh",:access_level=>1},
                      {:username=>"otim", :email=>"otimkevin@gmail.com",:password=>"otim123kev",:access_level=>2}])

  user = User.first

  article = Article.create(:title=>"Sample article",:body=>"This is just a stupid blog body",:lead_image=>"blog1.jpg")

  user.articles << article