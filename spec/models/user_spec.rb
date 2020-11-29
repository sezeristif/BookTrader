require "rails_helper"

RSpec.describe User, type: :model do
  it "email can't be blank" do
    expect(User.new(email: "", username: "sezer", encrypted_password: "sez123")).to_not be_valid
  end
  it "username can't be blank" do
    expect(User.new(email: "sezer@email.com", username: "", encrypted_password: "sez123")).to_not be_valid
  end
  it "username should be minimum 5 characters" do
    expect(User.new(email: "sezer@email.com", username: "asda", encrypted_password: "sez123")).to_not be_valid
  end
  it "username should be maximum characters" do
    expect(User.new(email: "sezer@email.com", username: "a" * 51, encrypted_password: "sez123")).to_not be_valid
  end
end
