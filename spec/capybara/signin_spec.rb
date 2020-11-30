require "rails_helper"

RSpec.describe "signed in users", type: :system do
  load "#{Rails.root}/db/seeds.rb"

  before(:all) do
    User.create(email: "user@example.com", password: "password")
  end

  it "can show book" do
    visit "/users/sign_in"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_button "Log In"
    visit "/"
    click_link("Show", match: :first)
    sleep(1)
    expect(page).to have_content "Book Show Page"
  end

  it "can create book" do
    visit "/users/sign_in"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_button "Log In"
    click_link "Create New Book"
    fill_in "Title", with: "book1"
    fill_in "Author", with: "author1"
    fill_in "Pages", with: 100
    click_button "Submit"
    sleep(1)
    expect(page).to have_content "Book Created Succesfully"
  end

  it "can show users profile" do
    visit "/users/sign_in"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_button "Log In"
    click_link "Users"
    click_link("User's Page", match: :first)
    sleep(1)
    expect(page).to have_content "Profile Page"
  end

  it "can leave a comment to book" do
    visit "/users/sign_in"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_button "Log In"
    visit "/"
    click_link("Show", match: :first)
    fill_in "Title", with: "comment title"
    fill_in "Content", with: "comment content"
    click_button "Comment"
    sleep(1)
    expect(page).to have_content "comment title"
  end
end
