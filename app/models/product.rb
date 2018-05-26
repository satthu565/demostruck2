class Product < ApplicationRecord
  # belongs_to :model, optional: true
  # belongs_to :color, optional: true
  # belongs_to :engine, optional: true
  # belongs_to :fuel, optional: true
  # belongs_to :transmision, optional: true

  def self.search(query)
    where("modelID = ? OR engineID = ? OR colorID = ? ", "#{query["product"]["model"]}","#{query["product"]["engine"]}","#{query["product"]["color"]}")
  end
end
