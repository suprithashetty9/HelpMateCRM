require "application_system_test_case"

class ProductSkusTest < ApplicationSystemTestCase
  setup do
    @product_sku = product_skus(:one)
  end

  test "visiting the index" do
    visit product_skus_url
    assert_selector "h1", text: "Product Skus"
  end

  test "creating a Product sku" do
    visit product_skus_url
    click_on "New Product Sku"

    fill_in "Createdby", with: @product_sku.createdby
    fill_in "Product", with: @product_sku.product_id
    fill_in "Productsku", with: @product_sku.productsku
    click_on "Create Product sku"

    assert_text "Product sku was successfully created"
    click_on "Back"
  end

  test "updating a Product sku" do
    visit product_skus_url
    click_on "Edit", match: :first

    fill_in "Createdby", with: @product_sku.createdby
    fill_in "Product", with: @product_sku.product_id
    fill_in "Productsku", with: @product_sku.productsku
    click_on "Update Product sku"

    assert_text "Product sku was successfully updated"
    click_on "Back"
  end

  test "destroying a Product sku" do
    visit product_skus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product sku was successfully destroyed"
  end
end
