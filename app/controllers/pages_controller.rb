class PagesController < ActionController::Base

  def home
    @featured_product = Product.find(1060500599)
    @sub1_product = Product.find(1060500600)
    @sub2_product = Product.find(1060500600)
    
    @alert_email = AlertEmail.new
    
    render :layout => 'layouts/letsbebuds'
  end
  
  def privacy
    @alert_email = AlertEmail.new
    render :layout => 'layouts/letsbebuds'
  end
  
  def terms
    @alert_email = AlertEmail.new
    render :layout => 'layouts/letsbebuds'
  end
  
  def contact
    @alert_email = AlertEmail.new
    render :layout => 'layouts/letsbebuds'
  end
end