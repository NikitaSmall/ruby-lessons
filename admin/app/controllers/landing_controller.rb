class LandingController < ApplicationController
  def index
    @products = Product.all
  end
end
