class Category < ActiveRecord::Base
  has_many :catrted_products
  has_many :products, through: :categorized_products
end
