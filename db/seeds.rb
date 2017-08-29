users = User.create(
  [
    { email: 'foo@example.com', password: 'password' },
    { email: 'bar@example.com', password: 'password' }
  ]
)

users.each do |user|
  user.snippets.create(
    [
      { title: 'title 1', content: 'contents of title !!!!!!!!!!!!!!1' },
      { title: 'title 2', content: '' },
      { title: 'タイトル 3', content: '日本語のスニペット' }
    ]
  )
end
