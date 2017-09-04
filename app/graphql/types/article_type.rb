module Types
  ArticleType = GraphQL::ObjectType.define do
    name 'Article'

    interfaces [DocumentInterface]

    field :content, !types.String
    field :id, !types.ID
    field :publisher, types.String
    field :title, !types.String
  end
end
