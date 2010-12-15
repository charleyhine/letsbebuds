class PagesController < ActionController::Base

  def home
    @featured_product = Product.find(1060500596)
    @sub1_product = Product.find(1060500597)
    @sub2_product = Product.find(1060500598)
    
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