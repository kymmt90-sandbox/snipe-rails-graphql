module Types
  UserType = GraphQL::ObjectType.define do
    name 'User'

    field :document do
      type !DocumentInterface

      resolve ->(obj, args, ctx) {
        Article.first
      }
    end

    field :article do
      type !ArticleType

      resolve ->(obj, args, ctx) {
        Article.find(args[:id])
      }
    end

    field :snippet do
      type !SnippetType

      resolve ->(obj, args, ctx) {
        Snippet.find(args[:id])
      }
    end

    field :email, !types.String
    field :id, !types.ID
    field :role, !Types::RoleEnum
  end
end
