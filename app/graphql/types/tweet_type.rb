# frozen_string_literal: true

module Types
  class TweetType < Types::BaseObject
    field :id, ID, null: false, description: "The unique identifier of the tweet."
    field :content, String, null: false, description: "The content of the tweet."
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, description: "The date and time when the tweet was created."
    field :user, Types::UserType, null: false, description: "The user who created the tweet."
  end
end
