class RemoveAutosReferenceInSr < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:autos, :service_request, index: true, foreign_key: true)
  end
end
