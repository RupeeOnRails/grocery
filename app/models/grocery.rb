class Grocery < ApplicationRecord
  has_many :store_groceries
  has_many :stores, through: :store_groceries

  def to_s
    name
  end

  def add_to_list
    existing_item = Item.active.select { |i| i.grocery == self }.first
    if existing_item.blank?
      item = Item.new
      item.quantity = 1
      item.grocery = self
      item.save
    else
      item = existing_item
      item.quantity = item.quantity + 1
      item.save
    end
    item
  end
end
