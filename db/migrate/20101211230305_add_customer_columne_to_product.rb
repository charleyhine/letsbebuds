class AddCustomerColumneToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :customer_id, :integer
  end

  def self.down
    remove_column :products, :customer_id
  end
end