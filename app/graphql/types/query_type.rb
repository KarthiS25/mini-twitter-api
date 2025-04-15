# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false
    field :user, Types::UserType, null: true do
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id:)
      User.find_by(id: id)
    end
  end
end
