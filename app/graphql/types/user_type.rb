# frozen_string_literal: true

module Types
  class Types::UserType < Types::BaseObject
    field :id, ID, null: false, description: "The unique identifier of the user."
    field :name, String, null: true, description: "The name of the user."
    field :email, String, null: true, description: "The email of the user."
    field :tweets, [Types::TweetType], null: true, description: "The tweets of the user."
  end
end
