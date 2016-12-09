class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    # @items = Item.active
    @past_items = Item.inactive.order(:created_at).reverse
    @q2 = Item.ransack({active_eq: true})
    @items = @q2.result(distinct: true)
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to items_path }
        format.js
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    @items = Item.active
    respond_to do |format|
      format.html { render nothing: true }
      format.js
      format.json { head :no_content }
    end
  end

  def increment
    @item = Item.find params[:id]
    @grocery = @item.grocery
    @item.increment
    render 'list/update_item'
  end

  def decrement
    @item = Item.find params[:id]
    @grocery = @item.grocery
    if @item.quantity <= 1
      @item.destroy
    else
      @item.decrement
    end
    render 'list/update_item'
  end

  def clear_items
    Item.clear
    render nothing: true
  end

  def list_search
    params[:q][:active_eq] = true
    @q2 = Item.ransack(params[:q])
    @items = @q2.result(distinct: true)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:grocery_id, :quantity, :checked)
    end
end
