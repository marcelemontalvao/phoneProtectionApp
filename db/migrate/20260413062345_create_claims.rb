class CreateClaims < ActiveRecord::Migration[8.1]
  def change
    create_table :claims do |t|
      t.string :claim_type
      t.text :description
      t.string :status
      t.references :phone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
