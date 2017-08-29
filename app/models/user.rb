class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :snippets, dependent: :destroy
  has_many :comments
  has_many :stars
  has_many :starred_snippets, class_name: 'Snippet', through: :stars

  has_secure_password
end
