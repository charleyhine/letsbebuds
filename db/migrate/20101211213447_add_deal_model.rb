class AddDealModel < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :redemption_code
      t.integer :user_id
      t.integer :order_id
      t.integer :product_id
      t.integer :customer_id
      t.boolean :redeemed, :default => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
