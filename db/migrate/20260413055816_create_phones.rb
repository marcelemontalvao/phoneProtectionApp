class CreatePhones < ActiveRecord::Migration[8.1]
  def change
    create_table :phones do |t|
      t.string :brand
      t.string :model
      t.integer :price

      t.timestamps
    end
  end
end
