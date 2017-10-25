class OrdersController < ApplicationController
  before_action :authenticate_user! 
  
  def new
    @book = Book.find(params[:book_id])
    @order = current_user.orders.new(book: @book)
  end

  # POST /tags
  # POST /tags.json
  def create
    @order = current_user.orders.new(order_params)
    @book = @order.book
    respond_to do |format|
      if @order.save
        OrderMailer.registration_mail(@order).deliver
        format.html { redirect_to products_url, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
  def order_params
    params.require(:order).permit(:book_id, :quantity, :address)
  end

end
