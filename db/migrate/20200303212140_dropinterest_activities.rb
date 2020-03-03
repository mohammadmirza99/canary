class DropinterestActivities < ActiveRecord::Migration[5.2]
  def change
    drop_table :interest_activities
  end
end
