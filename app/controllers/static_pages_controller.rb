class StaticPagesController < ApplicationController
  def index
  	@products = Product.limit(3)
  end

  def about
  end

  def contact
  end

  def landing_page
    @featured_product = Product.first
    @products = Product.limit(3)
  end
end
