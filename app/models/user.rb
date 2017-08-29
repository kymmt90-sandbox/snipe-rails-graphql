class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :snippets, dependent: :destroy

  has_secure_password
end
