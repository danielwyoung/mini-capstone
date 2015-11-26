class Product < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :users
  has_many :orders
  has_many :images

  def sale_message
    if price.to_i < 4
    "Discount Item!"
    else "On Sale!"
    end
  end

    def tax
      price.to_f * 0.09
    end

    def total_price
      price.to_f * 1.09
    end
end
