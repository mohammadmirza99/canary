class AddRateToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :rate, :integer
  end
end
