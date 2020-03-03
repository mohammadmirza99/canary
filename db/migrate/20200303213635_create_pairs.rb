class CreatePairs < ActiveRecord::Migration[5.2]
  def change
    create_table :pairs do |t|
      t.references :category, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
