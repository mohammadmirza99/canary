class DropcategoryInterests < ActiveRecord::Migration[5.2]
  def change
    drop_table :category_interests
  end
end
