require 'faker'

if Rails.env.development?
  Book.destroy_all
  Publisher.destroy_all
  Author.destroy_all
end

500.times do
  author = Author.create name: Faker::Book.author
  15.times { Publisher.create author: author, content: Faker::Book.publisher }
  Book.create title: Faker::Book.title, author: author
end
