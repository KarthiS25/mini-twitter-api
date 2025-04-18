# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_tweet, mutation: Mutations::CreateTweet
    field :delete_user, mutation: Mutations::DeleteUser
  end
end
