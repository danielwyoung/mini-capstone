class Supplier < ActiveRecord::Base
  has_many :products
  has_many :images
end
