require "application_system_test_case"

class MaintenanceShopListsTest < ApplicationSystemTestCase
  setup do
    @maintenance_shop_list = maintenance_shop_lists(:one)
  end

  test "visiting the index" do
    visit maintenance_shop_lists_url
    assert_selector "h1", text: "Maintenance Shop Lists"
  end

  test "creating a Maintenance shop list" do
    visit maintenance_shop_lists_url
    click_on "New Maintenance Shop List"

    check "Customerrepairs" if @maintenance_shop_list.CustomerRepairs
    fill_in "Garages", with: @maintenance_shop_list.Garages
    fill_in "Oiltypes", with: @maintenance_shop_list.OilTypes
    click_on "Create Maintenance shop list"

    assert_text "Maintenance shop list was successfully created"
    click_on "Back"
  end

  test "updating a Maintenance shop list" do
    visit maintenance_shop_lists_url
    click_on "Edit", match: :first

    check "Customerrepairs" if @maintenance_shop_list.CustomerRepairs
    fill_in "Garages", with: @maintenance_shop_list.Garages
    fill_in "Oiltypes", with: @maintenance_shop_list.OilTypes
    click_on "Update Maintenance shop list"

    assert_text "Maintenance shop list was successfully updated"
    click_on "Back"
  end

  test "destroying a Maintenance shop list" do
    visit maintenance_shop_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maintenance shop list was successfully destroyed"
  end
end
