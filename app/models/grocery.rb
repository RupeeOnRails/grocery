class Grocery < ApplicationRecord
  has_many :store_groceries
  has_many :stores, through: :store_groceries

  def to_s
    name
  end
end
