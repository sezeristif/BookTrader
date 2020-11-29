require 'faker'

User.create(email: 'Sezer@gmail.com', password: 'asdfgh')
User.create(email: 'Emir@gmail.com', password: 'asdfgh')
User.create(email: 'Hasan@gmail.com', password: 'asdfgh')
User.create(email: 'Osman@gmail.com', password: 'asdfgh')
User.create(email: 'Ebrar@gmail.com', password: 'asdfgh')
User.create(email: 'Merve@gmail.com', password: 'asdfgh')
User.create(email: 'Zeynep@gmail.com', password: 'asdfgh')
User.create(email: 'Orhan@gmail.com', password: 'asdfgh')
User.create(email: 'Idil@gmail.com', password: 'asdfgh')
User.create(email: 'Kerem@gmail.com', password: 'asdfgh')



3.times do
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 1)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 2)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 3)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 4)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 5)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 6)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 7)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 8)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 9)
  Book.create(title: Faker::Book.title, author: Faker::Book.author, pages: Faker::Number.number(digits: 3), public: true, trade_able: true, user_id: 10)
end
