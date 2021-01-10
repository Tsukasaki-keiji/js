class Comment < ApplicationRecord
  belongs_to :article
  validates :title, presence: true, length: { minimum: 5 }
end
