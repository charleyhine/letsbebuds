class Customer < ActiveRecord::Base
  has_many :deals, :class_name => "Deal", :foreign_key => "customer_id"
  has_many :products, :class_name => "Product", :foreign_key => "customer_id"
  
end