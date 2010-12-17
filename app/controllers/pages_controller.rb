class PagesController < ActionController::Base

  def home
    @featured_product = Product.find(1060500599)
    @sub1_product = Product.find(1060500600)
    @sub2_product = Product.find(1060500600)
    
    @alert_email = AlertEmail.new
    
    render :layout => 'layouts/letsbebuds'
  end
  
  def privacy
    render :layout => 'layouts/letsbebuds'
  end
  
  def terms
    render :layout => 'layouts/letsbebuds'
  end
  
  def contact
    render :layout => 'layouts/letsbebuds'
  end
end