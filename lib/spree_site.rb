module SpreeSite
  class Engine < Rails::Engine
    def self.activate
        Order.class_eval do 
              state_machines[:state] = StateMachine::Machine.new(Order, 
      :initial => 'cart', :use_transactions => false) do  # this is the line that changed 
                event :next do 
                  state_machines.clear 
                  transition :from => 'cart', :to => 'payment'
                  #transition :from => 'address', :to => 'payment'
                  #transition :from => 'delivery', :to => 'payment'
                  #transition :from => 'payment', :to => 'confirm'
                  transition :from => 'payment', :to => 'complete'
                end 
                #TODO - add conditional confirmation step (only when gateway supports it, etc.) 
                event :cancel do 
                  transition :to => 'canceled', :if => :allow_cancel? 
                end 
                event :return do 
                  transition :to => 'returned', :from => 'awaiting_return' 
                end 
                event :resume do 
                  transition :to => 'resumed', :from => 'canceled', :if => 
      :allow_resume? 
                end 
                event :authorize_return do 
                  transition :to => 'awaiting_return' 
                end 
                before_transition :to => 'complete' do |order| 
                  begin 
                    order.process_payments! 
                  rescue Spree::GatewayError 
                    if Spree::Config[:allow_checkout_on_gateway_error] 
                      true 
                    else 
                      false 
                    end 
                  end 
                end 
                #after_transition :to => 'orderdetails', :do => :order_details 
                after_transition :to => 'complete', :do => :finalize! 
                #after_transition :to => 'delivery', :do => :create_tax_charge! 
                #after_transition :to => 'payment', :do => :create_shipment! 
                after_transition :to => 'canceled', :do => :after_cancel 
              end 
            end
    end
    config.to_prepare &method(:activate).to_proc
  end
end