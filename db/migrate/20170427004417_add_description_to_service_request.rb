class AddDescriptionToServiceRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :service_requests, :description, :string
  end
end
