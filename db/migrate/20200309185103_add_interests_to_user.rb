class AddInterestsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :interests, :string, array: true
  end
end
