class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :start_end
      t.string :end_start

      t.timestamps
    end
  end
end
