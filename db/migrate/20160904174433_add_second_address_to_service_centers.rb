class AddSecondAddressToServiceCenters < ActiveRecord::Migration[5.0]
  def change
    add_column :service_centers, :service_address_second, :string
  end
end
