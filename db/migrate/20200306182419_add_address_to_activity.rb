class AddAddressToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :address, :string
  end
end
