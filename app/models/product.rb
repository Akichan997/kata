class Product < ApplicationRecord
    
    def change
        add_foreign_key :products, :currency
    end
  
    validates :product_name, presence: true
    validates :product_value, presence: true
    validates :currency_id, presence: true

end
