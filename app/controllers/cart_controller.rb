class CartController < ApplicationController
  attr_reader :items
  
  def initialize
    @items = []
  end
  
  def add_to_cart(product)
    @items << product
  end
  
  def clear
    @items.clear
  end
end
