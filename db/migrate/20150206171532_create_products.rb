class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :department
      t.string :name
      t.float :price
      t.belongs_to :company
    end
  end
end
