# frozen_string_literal: true

module Mutations
  class CreateTweet < BaseMutation
    argument :user_id, ID, required: true
    argument :content, String, required: true

    type Types::TweetType

    def resolve(user_id:, content:)
      user = User.find_by(id: user_id)
      user.tweets.create!(content: content)
    end
  end
end