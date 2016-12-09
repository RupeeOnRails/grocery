class Item < ApplicationRecord
  belongs_to :grocery

  def self.active
    Item.where active: true
  end

  def self.inactive
    Item.where active: false
  end

  def clear
    self.active = false
    save
  end

  def self.clear
    Item.active.each do |item|
      item.clear
    end
  end


  def category
    grocery ? grocery.category : nil
  end

  def increment
    self.quantity = quantity + 1
    save
  end

  def decrement
    self.quantity = quantity - 1
    save
  end
end
