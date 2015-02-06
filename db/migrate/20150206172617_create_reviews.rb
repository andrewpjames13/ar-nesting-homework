class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.belongs_to :product
      t.integer :rating
    end
  end
end
