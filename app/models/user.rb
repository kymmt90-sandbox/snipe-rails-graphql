class User < ApplicationRecord
  enum role: [:normal, :admin]

  has_many :articles, dependent: :destroy
  has_many :comments
  has_many :snippets, dependent: :destroy
  has_many :stars
  has_many :starred_snippets, class_name: 'Snippet', through: :stars

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
end
