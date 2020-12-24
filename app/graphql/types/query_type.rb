module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :get_users, [Types::UserType], null: false, description: 'This will return all users'
    field :get_user, Types::UserType, null: false do
      description 'This will return a single user'
      argument :id, ID, required: true
    end

    def get_users
      User.all
    end

    def get_user(id:)
      User.find(id)
    end
  end
end
