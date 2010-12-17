class AlertEmail < ActiveRecord::Base
  include ActiveModel::Validations
  attr_accessor :email
  
  validates :email, :presence => true, :email => true
end
