require "action_view"
include ActionView::Helpers::NumberHelper

class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    @prices = []
    @products.each {|item| @prices.push(item.price) }
    @price = number_to_currency(@product.price, options = { delimiter: ","} )
  end

  def show
    @product = Product.find params[:id]
  end

end
