class PagesController < ActionController::Base

  def home
    @featured_product = Product.find(:last)
    
    render :layout => 'layouts/letsbebuds'
  end
end