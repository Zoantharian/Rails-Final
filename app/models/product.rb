class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price
  
  def self.find_products_for_sale
    find(:all, :order => "title")
  end
  
end
