# frozen_string_literal: true

module Mutations
  class DeleteUser < BaseMutation
    argument :id, ID, required: true

    type Types::UserType

    def resolve(id:)
      user = User.find_by(id: id)
      if user
        user.destroy!
        user
      else
        raise GraphQL::ExecutionError, "User not found"
      end
    end
  end
end
