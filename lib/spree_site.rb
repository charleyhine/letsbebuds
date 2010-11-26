module SpreeSite
  class Engine < Rails::Engine
    def self.activate
      
    end
    config.to_prepare &method(:activate).to_proc
  end
end