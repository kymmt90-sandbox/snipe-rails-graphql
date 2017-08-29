class Snippet < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 0 }, allow_nil: false

  belongs_to :user

  has_many :comments
  has_many :stars
  has_many :starring_users, class_name: 'User', through: :stars
end
