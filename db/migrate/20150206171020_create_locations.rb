class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :street_name
      t.string :state
      t.integer :zip_code
      t.string :country
      t.belongs_to :company
    end
  end
end
