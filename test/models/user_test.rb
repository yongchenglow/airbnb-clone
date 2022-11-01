require "test_helper"
require "open-uri"

class UserTest < ActiveSupport::TestCase
  test "Should not save user without any information" do
    user = User.new
    assert_not user.save
  end

  test "Should not save user with invalid email" do
    file =
      URI.open(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
      )
    user =
      User.new(
        email: "testgmail.com",
        password: "password",
        first_name: "Alice",
        last_name: "Huh",
      )
    user.photo.attach(io: file, filename: "nes.png")
    assert_not user.save
  end

  test "Should not save user when password is too short" do
    file =
      URI.open(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
      )
    user =
      User.new(
        email: "test@gmail.com",
        password: "short",
        first_name: "Alice",
        last_name: "Huh",
      )
    user.photo.attach(io: file, filename: "nes.png")
    assert_not user.save
  end

  test "Should not save user with no first name" do
    file =
      URI.open(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
      )
    user =
      User.new(email: "test@gmail.com", password: "password", last_name: "Huh")
    user.photo.attach(io: file, filename: "nes.png")
    assert_not user.save
  end

  test "Should not save user with no last name" do
    file =
      URI.open(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
      )
    user =
      User.new(
        email: "test@gmail.com",
        password: "password",
        first_name: "Alice",
      )
    user.photo.attach(io: file, filename: "nes.png")
    assert_not user.save
  end

  test "Should not save user with no photo" do
    user =
      User.new(
        email: "test@gmail.com",
        password: "password",
        first_name: "Alice",
        last_name: "Huh",
      )
    assert_not user.save
  end

  test "Should save user when provided with correct information" do
    file =
      URI.open(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
      )
    user =
      User.new(
        email: "test@gmail.com",
        password: "password",
        first_name: "Alice",
        last_name: "Huh",
      )
    user.photo.attach(io: file, filename: "nes.png")
    assert user.save
  end
end
