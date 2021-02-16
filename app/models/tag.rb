class Tag < ApplicationRecord
  has_many :jersey_tags
  has_many :tags, through: :jersey_tags
end
