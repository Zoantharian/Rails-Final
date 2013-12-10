class ShopController < ApplicationController
  def index
    @products = Product.find_products_for_sale
  end
  
  def create
  end
  
  def add_to_cart
    @cart = get_cart
    @cart.add_to_cart(Product.find(params[:id]))
  end
  
  def get_cart
    if session[:cart]
      return session[:cart]
    else
      session[:cart] = Cart.new
      return session[:cart]
    end
  end
    
    def clear_cart
      @cart = get_cart
      @cart.clear
    end
    
end
