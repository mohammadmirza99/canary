class Dropinterests < ActiveRecord::Migration[5.2]
  def change
    drop_table :interests
  end
end
