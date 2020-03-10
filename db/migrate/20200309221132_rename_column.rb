class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :itineraries, :start_end, :start_date
    rename_column :itineraries, :end_start, :end_date
  end
end
