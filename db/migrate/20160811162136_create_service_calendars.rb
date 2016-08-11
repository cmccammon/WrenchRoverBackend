class CreateServiceCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :service_calendars do |t|
      t.integer :service_appointment, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
