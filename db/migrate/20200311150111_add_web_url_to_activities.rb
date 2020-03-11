class AddWebUrlToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :web_url, :string
  end
end
