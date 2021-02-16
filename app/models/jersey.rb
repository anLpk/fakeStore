class Jersey < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :jersey_tags
  has_many :tags, through: :jersey_tags
  has_one_attached :photo

  validates :name, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :description, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
