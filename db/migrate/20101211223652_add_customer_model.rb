class AddCustomerModel < ActiveRecord::Migration
  def self.up
     create_table :customers do |t|
        t.string :name
        t.string :email_address
        t.string :phone_number
        t.string :url
        t.string :address
        t.string :city
        t.string :state
        t.string :zip_code
        t.string :country
        

        t.timestamps
      end
  end

  def self.down
    drop_table :customers
  end
end
