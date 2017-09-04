class Snippet < ApplicationRecord
  include Document

  has_many :comments
  has_many :stars
  has_many :starring_users, class_name: 'User', through: :stars
end
