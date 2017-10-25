class ProductsController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

   def index
    @books = Book.all
   end
 
   def show
   end
 
   private
   # Use callbacks to share common setup or constraints between actions.
   def set_book
     @book = Book.find(params[:id])
   end 
end
