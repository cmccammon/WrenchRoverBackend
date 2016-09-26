class DropUserCalendars < ActiveRecord::Migration[5.0]
  def change
    drop_table :user_calendars
  end
end
