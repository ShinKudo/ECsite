class ProductsController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  
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

   # Never trust parameters from the scary internet, only allow the white list through.
   def book_params
     params.require(:book).permit(:title, :author, :published_on, :showing, :price, :picture, tag_ids: [])
   end
 
end
