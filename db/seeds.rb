users = User.create(
  [
    { email: 'foo@example.com', password: 'password', role: :normal },
    { email: 'bar@example.com', password: 'password', role: :admin }
  ]
)

users.each do |user|
  user.articles.create(
    [
      { title: 'article 1', content: 'contents', publisher: 'hackernews' },
      { title: 'article 2', content: '', publisher: 'reddit' },
      { title: '記事 3', content: '日本語の記事', publisher: 'はてな' }
    ]
  )

  user.snippets.create(
    [
      { title: 'title 1', content: 'contents of title !!!!!!!!!!!!!!1' },
      { title: 'title 2', content: '' },
      { title: 'タイトル 3', content: '日本語のスニペット' }
    ]
  )
end
