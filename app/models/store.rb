class Store < ApplicationRecord
  has_many :store_groceries
  has_many :groceries, through: :store_groceries
end
