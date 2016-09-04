class RemoveSecondAddressFromServiceCenters < ActiveRecord::Migration[5.0]
  def change
    remove_column :service_centers, :second_address, :string
  end
end
