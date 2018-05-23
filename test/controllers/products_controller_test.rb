require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { co2: @product.co2, colorID: @product.colorID, comfort: @product.comfort, door: @product.door, engineID: @product.engineID, fabrication: @product.fabrication, feature: @product.feature, fuelID: @product.fuelID, modelID: @product.modelID, moreinfo: @product.moreinfo, name: @product.name, other_parameter: @product.other_parameter, price: @product.price, safety: @product.safety, transmisionID: @product.transmisionID } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { co2: @product.co2, colorID: @product.colorID, comfort: @product.comfort, door: @product.door, engineID: @product.engineID, fabrication: @product.fabrication, feature: @product.feature, fuelID: @product.fuelID, modelID: @product.modelID, moreinfo: @product.moreinfo, name: @product.name, other_parameter: @product.other_parameter, price: @product.price, safety: @product.safety, transmisionID: @product.transmisionID } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
