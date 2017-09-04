module Types
  SnippetType = GraphQL::ObjectType.define do
    name 'Snippet'

    interfaces [DocumentInterface]

    field :content, !types.String
    field :id, !types.ID
    field :title, !types.String
  end
end
