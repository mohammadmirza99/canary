class CreateCategoryActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :category_activities do |t|
      t.references :category, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
