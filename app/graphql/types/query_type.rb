# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false
    field :tweets, [Types::TweetType], null: false
    field :user, Types::UserType, null: true do
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def tweets
      Tweet.all
    end

    def user(id:)
      user = User.find_by(id: id)
      raise GraphQL::ExecutionError, "User not found" unless user
      user
    end
  end
end
