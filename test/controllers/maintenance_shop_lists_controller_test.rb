require 'test_helper'

class MaintenanceShopListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maintenance_shop_list = maintenance_shop_lists(:one)
  end

  test "should get index" do
    get maintenance_shop_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_maintenance_shop_list_url
    assert_response :success
  end

  test "should create maintenance_shop_list" do
    assert_difference('MaintenanceShopList.count') do
      post maintenance_shop_lists_url, params: { maintenance_shop_list: { CustomerRepairs: @maintenance_shop_list.CustomerRepairs, Garages: @maintenance_shop_list.Garages, OilTypes: @maintenance_shop_list.OilTypes } }
    end

    assert_redirected_to maintenance_shop_list_url(MaintenanceShopList.last)
  end

  test "should show maintenance_shop_list" do
    get maintenance_shop_list_url(@maintenance_shop_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_maintenance_shop_list_url(@maintenance_shop_list)
    assert_response :success
  end

  test "should update maintenance_shop_list" do
    patch maintenance_shop_list_url(@maintenance_shop_list), params: { maintenance_shop_list: { CustomerRepairs: @maintenance_shop_list.CustomerRepairs, Garages: @maintenance_shop_list.Garages, OilTypes: @maintenance_shop_list.OilTypes } }
    assert_redirected_to maintenance_shop_list_url(@maintenance_shop_list)
  end

  test "should destroy maintenance_shop_list" do
    assert_difference('MaintenanceShopList.count', -1) do
      delete maintenance_shop_list_url(@maintenance_shop_list)
    end

    assert_redirected_to maintenance_shop_lists_url
  end
end
