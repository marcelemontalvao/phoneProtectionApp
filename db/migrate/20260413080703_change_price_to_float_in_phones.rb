class ChangePriceToFloatInPhones < ActiveRecord::Migration[8.1]
  def change
      change_column :phones, :price, :decimal, precision: 10, scale: 2
  end
end
