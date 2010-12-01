Rails.application.routes.draw do
    match '/checkout' => 'checkout#edit', :state => 'payment', :as => :checkout
    #match '/login' => 'checkout#edit', :state => 'registration', :as => :login
end
