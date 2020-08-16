class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :publishers, dependent: :destroy

  validates :name, presence: true
end
