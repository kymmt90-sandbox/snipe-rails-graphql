SnipeRailsGraphqlSchema = GraphQL::Schema.define do
  mutation Types::MutationType
  query Types::QueryType

  resolve_type ->(type, obj, ctx) do
    case obj
    when Article
      Types::ArticleType
    when Snippet
      Types::SnippetType
    else
      raise "Don't know how to get the GraphQL type of a #{obj.class.name} (#{obj.inspect})"
    end
  end
end
