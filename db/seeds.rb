require 'faker'

Movie.destroy_all

100.times do
 movie = Movie.create!(name: Faker::Movie.title, year: Faker::Number.within(range:1900..2020), synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 4), director: Faker::Name.name, allocine_rating: Faker::Number.between(from: 0.0, to: 5.0).round(1), already_seen: false)
end