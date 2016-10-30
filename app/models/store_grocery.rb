class StoreGrocery < ApplicationRecord
  belongs_to :store
  belongs_to :grocery
end
