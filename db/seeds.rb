require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up database..."

Bookmark.destroy_all
Movie.destroy_all
List.destroy_all
Review.destroy_all

puts "DB cleaned-up"

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

puts "#{Movie.count} movies created"

list1 = List.new(name: 'Blockbusters')
list1.photo.attach(io: URI.open('https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1718&q=80'), filename: "seed.png", content_type: "image/png")
list1.save

list2 = List.new(name: 'Western Movies')
list2.photo.attach(io: URI.open('https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1718&q=80'), filename: "seed.png", content_type: "image/png")
list2.save

list3 = List.new(name: 'Horror Movies')
list3.photo.attach(io: URI.open('https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1718&q=80'), filename: "seed.png", content_type: "image/png")
list3.save

list4 = List.new(name: 'French Movies')
list4.photo.attach(io: URI.open('https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1718&q=80'), filename: "seed.png", content_type: "image/png")
list4.save

list5 = List.new(name: 'Drama')
list5.photo.attach(io: URI.open('https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1718&q=80'), filename: "seed.png", content_type: "image/png")
list5.save

list6 = List.new(name: 'Adventure')
list6.photo.attach(io: URI.open('https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1718&q=80'), filename: "seed.png", content_type: "image/png")
list6.save

puts "#{List.count} lists created"

Bookmark.create(comment: "Val's favorites", movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: 'Recommended by Benjamin', movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)
Bookmark.create(comment: Faker::Markdown.emphasis, movie_id: Movie.all.sample.id, list_id: List.all.sample.id)

puts "#{Bookmark.count} bookmarks created"

List.all.each do |list|
  4.times do
    Review.create(comment: Faker::Markdown.emphasis, rating: Faker::Number.between(from: 0.0, to: 5.0).round(2), list: list)
  end
end

puts "#{Review.count} reviews created"
