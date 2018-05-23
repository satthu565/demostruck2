json.extract! product, :id, :name, :price, :modelID, :fabrication, :fuelID, :engineID, :transmisionID, :colorID, :door, :co2, :feature, :other_parameter, :safety, :comfort, :moreinfo, :created_at, :updated_at
json.url product_url(product, format: :json)
