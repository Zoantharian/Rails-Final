class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price
  
  def self.find_products_for_sale
    find(:all, :order => "title")
  end
  
  protected
  def validate
    errors.add(:price, "should be at least $0.01") if price.nil? || price < 0.01
  end
end
