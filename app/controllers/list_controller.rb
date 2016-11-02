class ListController < ApplicationController
  def add_items
    @q = Grocery.ransack(params[:q])
    @groceries = @q.result(distinct: true)

    @items = Item.all
  end

  def add_item
    @grocery = Grocery.find params[:grocery_id]
    @item = Item.new
    @item.quantity = 1
    @item.grocery = @grocery
    @item.save
  end
end