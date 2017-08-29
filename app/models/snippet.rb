class Snippet < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 0 }, allow_nil: false

  belongs_to :user
end
