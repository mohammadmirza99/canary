class AddItineraryToSelections < ActiveRecord::Migration[5.2]
  def change
    add_reference :selections, :itinerary, foreign_key: true
  end
end
