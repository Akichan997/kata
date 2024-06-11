class CreateCurrencies < ActiveRecord::Migration[7.1]
  def change
    change_table :products do |t|
      add_foreign_key :products, :currencies
    end
  end

  def change
    create_table :currencies do |t|
      t.string "currency_title"
      t.string "currency_symbol"

      t.timestamps
    end
  end
end
