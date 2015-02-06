class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :suffix
      t.string :catch_phrase
      t.string :email
      t.date :start_date
      t.string :industry
    end
  end
end
