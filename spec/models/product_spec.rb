require 'rails_helper'

describe Product do
  before do
    @product = Product.create! name: "Cool Shirt"
    @user = User.create! email: "johns@example.com", password: "password1"
    @product_input = {
      @product.comments.create! rating: 1, user: @user, body: "a bad bike",
      @product.comments.create! rating: 5, user: @user, body: "an outstanding bike",
      @product.comments.create!  rating: 3, user: @user, body: "an extremely average bike"
    }
    @average = (@product_input.each { 
      |input| sum+=input.rating
    }).to_f /@product_input.size
  end

  it "should expect ratings average to equal 3" do
    expect (@average).to eq 3
  end
end