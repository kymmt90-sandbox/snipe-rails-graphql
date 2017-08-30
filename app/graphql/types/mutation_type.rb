Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createUser, Types::UserType do
    description 'Create a user who has an e-mail address and a password'
    argument :user, Types::UserInputType
    resolve ->(obj, args, ctx) {
      User.create!(args[:user].to_h)
    }
  end
end
