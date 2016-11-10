class AddUserToServiceCenters < ActiveRecord::Migration[5.0]
  def change
    add_reference :service_centers, :user, foreign_key: true
  end
end
