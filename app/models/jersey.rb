class Jersey < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
