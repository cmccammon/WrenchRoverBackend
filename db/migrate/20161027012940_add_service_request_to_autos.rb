class AddServiceRequestToAutos < ActiveRecord::Migration[5.0]
  def change
    remove_column :autos, :service_request_id, :string
    add_reference :autos, :service_request, foreign_key: true
  end
end
