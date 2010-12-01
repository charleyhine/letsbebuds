class ApplicationController < ActionController::Base
  #before_filter :check_uri
  protect_from_forgery

  #def check_uri
  #  if /^www/.match(request.host)
  #   redirect_to request.protocol + request.host_with_port[4..-1] + request.request_uri 
  #  end
  #end
end
