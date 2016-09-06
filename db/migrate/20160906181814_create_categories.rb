class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name,        null: false
      t.integer :parent_id

      t.timestamps
    end
  end
end
