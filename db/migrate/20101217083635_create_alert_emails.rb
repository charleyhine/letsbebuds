class CreateAlertEmails < ActiveRecord::Migration
  def self.up
    create_table :alert_emails do |t|
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :alert_emails
  end
end
