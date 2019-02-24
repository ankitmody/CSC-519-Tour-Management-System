class Tour < ApplicationRecord
  belongs_to :agent, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  validates :booking_deadline, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  validates :start_location, :presence => true
  validates :itinerary, :presence => true
  validates :seats, :presence => true
  # validates :agent_id, :presence => true
  validates :status, :presence => true

  #adding the class of uploader to the model where it needs to be uploaded/shown
  mount_uploader :image, ImageUploader

end
