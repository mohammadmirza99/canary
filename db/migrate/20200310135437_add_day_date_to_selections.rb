class AddDayDateToSelections < ActiveRecord::Migration[5.2]
  def change
    add_column :selections, :day_date, :integer
  end
end
