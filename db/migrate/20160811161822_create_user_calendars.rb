class CreateUserCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :user_calendars do |t|
      t.integer :user_appointment, null: false
      t.references :service_quote, foreign_key: true

      t.timestamps
    end
  end
end
