class CreateAutos < ActiveRecord::Migration[5.0]
  def change
    create_table :autos do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :trim
      t.string :engine
      t.integer :mileage
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
