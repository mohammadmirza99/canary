class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.string :time_of_day
      t.string :date

      t.timestamps
    end
  end
end
