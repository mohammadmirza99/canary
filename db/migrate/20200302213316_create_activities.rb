class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :latitude
      t.string :longitude
      t.string :name
      t.text :description
      t.string :price_category
      t.string :image_url
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
