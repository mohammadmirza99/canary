class CreateCategoryInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :category_interests do |t|
      t.references :category, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end

