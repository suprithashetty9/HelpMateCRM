require 'test_helper'

class ProductSkusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_sku = product_skus(:one)
  end

  test "should get index" do
    get product_skus_url
    assert_response :success
  end

  test "should get new" do
    get new_product_sku_url
    assert_response :success
  end

  test "should create product_sku" do
    assert_difference('ProductSku.count') do
      post product_skus_url, params: { product_sku: { createdby: @product_sku.createdby, product_id: @product_sku.product_id, productsku: @product_sku.productsku } }
    end

    assert_redirected_to product_sku_url(ProductSku.last)
  end

  test "should show product_sku" do
    get product_sku_url(@product_sku)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_sku_url(@product_sku)
    assert_response :success
  end

  test "should update product_sku" do
    patch product_sku_url(@product_sku), params: { product_sku: { createdby: @product_sku.createdby, product_id: @product_sku.product_id, productsku: @product_sku.productsku } }
    assert_redirected_to product_sku_url(@product_sku)
  end

  test "should destroy product_sku" do
    assert_difference('ProductSku.count', -1) do
      delete product_sku_url(@product_sku)
    end

    assert_redirected_to product_skus_url
  end
end
