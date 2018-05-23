class Product < ApplicationRecord
  belongs_to :model
  belongs_to :color
  belongs_to :engine
  belongs_to :fuel
  belongs_to :transmision
end
