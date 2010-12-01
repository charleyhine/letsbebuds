Rails.application.routes.draw do
  match '/checkout' => 'checkout#edit', :state => 'payment', :as => :checkout
end
