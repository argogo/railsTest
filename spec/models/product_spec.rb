require 'rails_helper'

describe Product do
  before do
    @product = Product.create!(name: "race bike");
  end
end