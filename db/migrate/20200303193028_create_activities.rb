class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.float :longitude
      t.float :latitude
      t.string :name
      t.text :description
      t.string :price_category
      t.references :location, foreign_key: true
      t.string :time_of_day
      t.string :image_url

      t.timestamps
    end
  end
end
