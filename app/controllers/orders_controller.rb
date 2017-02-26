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

    if (user_signed_in? or verify_recaptcha(model: @user)) && @order.save
      Telegram.bot.send_message chat_id: -219439105, text: telegram_message, parse_mode: :Markdown
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
    params.require(:order).permit(:content, :author, :stand_id, :place_id, :status, :recontact_info, :place_details)
  end

  def telegram_message
    if !@order.place.nil?  && !@order.place.stand.nil?
      r = '*Commande #' + @order.id.to_i.to_s + ' attribuée à ' + @order.stand.label + "*\n"
    else
      r = '*Commande #' + @order.id.to_i.to_s + "*\n"
    end
    r += '*Demandeur : *' + @order.author + "\n"
    if @order.recontact_info != ''
      r += '_Contact info : _' + @order.recontact_info + "\n"
    end
    r += '*Lieu : *' + @order.place.label + "\n"
    if @order.place_details != ''
      r += '_Détails du lieu : _' + @order.place_details + "\n"
    end
    r += "\n*Contenu de la commande : *" + @order.content + "\n"

    r
  end
end
