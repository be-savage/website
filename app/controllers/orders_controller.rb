class OrdersController < ApplicationController

  authorize_resource

  def index
    if params.has_key?(:stand_id)
      @stand = Stand.find(params[:stand_id])
      @orders = Order.where('stand_id' => params[:stand_id])
    elsif params.has_key?(:status)
      @orders = Order.where('status' => params[:status])
    else
      @statuses = Order.statuses
      @stands = Stand.all
      @orders = Order.where('status' => :active)
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if !@order.place.nil?  && !@order.place.stand.nil?
      @order.stand = @order.place.stand
    end

    if verify_recaptcha(model: @user) && @order.save
      redirect_to orders_path
    else
      @places = Place.all
      render 'new'
    end
  end

  def edit
    @order = Order.find(params[:id])
    @stands = Stand.all
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to orders_path
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:content, :author, :stand_id, :place_id, :status)
  end
end
