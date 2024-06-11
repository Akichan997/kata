class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_value
      t.integer :currency_id

      t.timestamps

      add_foreign_key :products, :currency
    end
  end

  def change
    create_table :currency do |t|
      t.string "currency_title"
      t.string "currency_symbol"

      t.timestamps
    end
  end
end
