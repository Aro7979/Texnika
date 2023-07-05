class SalonController < ApplicationController
  def index
     @products = Product.all
     @icones = Icone.all
  end
end
