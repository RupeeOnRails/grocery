class ListController < ApplicationController
  def add_items
    @q = Grocery.ransack(params[:q])
    @groceries = @q.result(distinct: true)

    @items = Item.active
  end

  def add_item
    @grocery = Grocery.find params[:grocery_id]
    @grocery.add_to_list
    @items = Item.active
  end
end