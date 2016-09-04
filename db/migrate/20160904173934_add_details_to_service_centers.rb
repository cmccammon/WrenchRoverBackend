class AddDetailsToServiceCenters < ActiveRecord::Migration[5.0]
  def change
    add_column :service_centers, :second_address, :string
  end
end
