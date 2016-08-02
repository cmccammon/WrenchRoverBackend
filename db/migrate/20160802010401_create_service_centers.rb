class CreateServiceCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :service_centers do |t|
      t.string :service_name
      t.string :service_address
      t.string :service_city
      t.string :service_state
      t.string :service_zip
      t.string :service_phone
      t.string :service_email
      t.string :service_bio

      t.timestamps
    end
  end
end
