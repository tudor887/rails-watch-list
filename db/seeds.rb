# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Clearing DB'
Movie.destroy_all

puts 'Creating some fake movies'
20.times do
  Movie.create(title: Faker::Movie.title, overview: Faker::Lorem.sentence, poster_url: Faker::Avatar.image, rating: rand(0..10))
end
5.times do List.create(name: Faker::TvShows::BreakingBad.episode)
end

