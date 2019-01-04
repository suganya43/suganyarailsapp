require 'test_helper'

class ItemtaxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itemtax = itemtaxes(:one)
  end

  test "should get index" do
    get itemtaxes_url
    assert_response :success
  end

  test "should get new" do
    get new_itemtax_url
    assert_response :success
  end

  test "should create itemtax" do
    assert_difference('Itemtax.count') do
      post itemtaxes_url, params: { itemtax: { itemid: @itemtax.itemid, tax: @itemtax.tax, tax_type: @itemtax.tax_type } }
    end

    assert_redirected_to itemtax_url(Itemtax.last)
  end

  test "should show itemtax" do
    get itemtax_url(@itemtax)
    assert_response :success
  end

  test "should get edit" do
    get edit_itemtax_url(@itemtax)
    assert_response :success
  end

  test "should update itemtax" do
    patch itemtax_url(@itemtax), params: { itemtax: { itemid: @itemtax.itemid, tax: @itemtax.tax, tax_type: @itemtax.tax_type } }
    assert_redirected_to itemtax_url(@itemtax)
  end

  test "should destroy itemtax" do
    assert_difference('Itemtax.count', -1) do
      delete itemtax_url(@itemtax)
    end

    assert_redirected_to itemtaxes_url
  end
end
