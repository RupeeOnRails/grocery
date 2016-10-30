class StoreGroceriesController < ApplicationController
  before_action :set_store_grocery, only: [:show, :edit, :update, :destroy]

  # GET /store_groceries
  # GET /store_groceries.json
  def index
    @store_groceries = StoreGrocery.all
  end

  # GET /store_groceries/1
  # GET /store_groceries/1.json
  def show
  end

  # GET /store_groceries/new
  def new
    @store_grocery = StoreGrocery.new
  end

  # GET /store_groceries/1/edit
  def edit
  end

  # POST /store_groceries
  # POST /store_groceries.json
  def create
    @store_grocery = StoreGrocery.new(store_grocery_params)

    respond_to do |format|
      if @store_grocery.save
        format.html { redirect_to @store_grocery, notice: 'Store grocery was successfully created.' }
        format.json { render :show, status: :created, location: @store_grocery }
      else
        format.html { render :new }
        format.json { render json: @store_grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_groceries/1
  # PATCH/PUT /store_groceries/1.json
  def update
    respond_to do |format|
      if @store_grocery.update(store_grocery_params)
        format.html { redirect_to @store_grocery, notice: 'Store grocery was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_grocery }
      else
        format.html { render :edit }
        format.json { render json: @store_grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_groceries/1
  # DELETE /store_groceries/1.json
  def destroy
    @store_grocery.destroy
    respond_to do |format|
      format.html { redirect_to store_groceries_url, notice: 'Store grocery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_grocery
      @store_grocery = StoreGrocery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_grocery_params
      params.require(:store_grocery).permit(:store_id, :grocery_id, :isle_id)
    end
end
