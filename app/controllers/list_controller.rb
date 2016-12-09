class ListController < ApplicationController
  def add_items
    @q = Grocery.ransack(params[:q])
    @q2 = Item.ransack({active_eq: true})
    @groceries = @q.result(distinct: true)
    @items = @q2.result(distinct: true)
  end

  def add_item
    @grocery = Grocery.find params[:grocery_id]
    @grocery.add_to_list
    @items = Item.active
    render 'update_item'
  end
end