class Grocery < ApplicationRecord
  has_many :store_groceries
  has_many :stores, through: :store_groceries
end
