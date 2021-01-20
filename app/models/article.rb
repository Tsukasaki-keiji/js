class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :favorites, dependent: :destroy
  has_many :posts, dependent: :destroy
  belongs_to :user
end
