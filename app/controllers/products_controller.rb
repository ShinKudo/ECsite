class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Book.ransack params[:q]
    @products = @q.result
  end
 
  def show
    @book = Book.find(params[:id])
    @order = OrderDetail.new(book: @book)
  end

  def add_to_cart
    session[:book_ids] = [] if session[:book_ids].blank?
    session[:book_ids] << params[:id]
    redirect_to products_url, notice: "add to cart.#{session[:book_ids]}"
  end
end