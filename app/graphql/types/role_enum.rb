Types::RoleEnum = GraphQL::EnumType.define do
  name 'Roles'
  description 'Roles of users'

  value 'NORMAL', 'a normal user', value: 'normal'
  value 'ADMIN', 'an admin user', value: 'admin'
end
