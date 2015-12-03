class Product < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :users
  has_many :orders
  has_many :images
  has_many :carted_products
  has_many :categories, through: :categorized_products
  has_many :categorized_products
  has_many :orders, through: :carted_products



  SALES_TAX = 0.09
  DISCOUNT_THRESHOLD = 4

  def sale_message
    if price.to_i < DISCOUNT_THRESHOLD
    "Discount Item!"
    else "On Sale!"
    end
  end

    def tax
      price.to_f * SALES_TAX
    end

    def total_price
      price.to_i + tax
    end

    def subtotal
      
    end
end
