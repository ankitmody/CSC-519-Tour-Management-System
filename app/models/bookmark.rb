class Bookmark < ApplicationRecord
  belongs_to :customer
  belongs_to :tour

  validate :customer_id, presence:true
  validate :tour_id, presence:true
end
