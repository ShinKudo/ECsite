class CartsController < ApplicationController

  def index
    @products = Book.find(session[:book_ids])
  end

end
