class Search < ApplicationRecord
  def search_tours
    tours = Tour.all
    tours = tours.where("lower(itinerary) like ?", "%#{itinerary.downcase}%") if itinerary.present?
  end
end
