require "rails_helper"

RSpec.describe Book, type: :model do
  subject(:book) do
    Book.new(
      title: Faker::Name.name,
      author: Faker::Name.name,
      pages: 50,
      public: true
    )
  end

  subject(:user) do
    User.create(
      email: Faker::Internet.email,
      username: Faker::Internet.username,
      password: Faker::Internet.password
    )
  end

  it "title should not be nil" do
    book.user_id = user.id
    book.title = nil
    expect(book).to_not be_valid
  end

  it "author should not be nil" do
    book.user_id = user.id
    book.author = nil
    expect(book).to_not be_valid
  end

  it "pages should not be nil" do
    book.user_id = user.id
    book.pages = nil
    expect(book).to_not be_valid
  end
end
