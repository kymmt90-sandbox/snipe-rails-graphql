module Types
  DocumentInterface = GraphQL::InterfaceType.define do
    name 'Document'

    field :content, !types.String
    field :id, !types.ID
    field :title, !types.String
  end
end
