module Document
  extend ActiveSupport::Concern

  included do
    belongs_to :user

    validates :content, length: { minimum: 0 }, allow_nil: false
    validates :title, presence: true
  end
end
