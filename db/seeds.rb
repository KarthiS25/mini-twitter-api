user_1 = User.create!(name: "John", email: "john@example.com")
user_1.tweets.create!(content: "This is my first tweet!")
user_1.tweets.create!(content: "Second tweet!")

user_2 = User.create!(name: "Maddy", email: "maddy@example.com")
user_2.tweets.create!(content: "This is my first tweet!")