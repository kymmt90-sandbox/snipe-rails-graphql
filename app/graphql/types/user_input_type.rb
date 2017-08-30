Types::UserInputType = GraphQL::InputObjectType.define do
  name 'UserInputType'
  description 'Attributes for creating a user'

  argument :email, !types.String do
    description 'e-mail address of the user'
  end

  argument :password, !types.String do
    description 'password of the user'
  end
end
