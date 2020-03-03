class AddInterestToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :interest, :string
  end
end
