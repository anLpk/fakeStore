class Review < ApplicationRecord
  belongs_to :jersey
  validates :content, length: { minimum: 20 }
end
