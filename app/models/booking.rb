class Booking < ApplicationRecord
  belongs_to :jersey
  validates :start_date, :end_date, presence: true
end
