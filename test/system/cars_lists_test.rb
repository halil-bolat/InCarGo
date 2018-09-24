require "application_system_test_case"

class CarsListsTest < ApplicationSystemTestCase
  setup do
    @cars_list = cars_lists(:one)
  end

  test "visiting the index" do
    visit cars_lists_url
    assert_selector "h1", text: "Cars Lists"
  end

  test "creating a Cars list" do
    visit cars_lists_url
    click_on "New Cars List"

    click_on "Create Cars list"

    assert_text "Cars list was successfully created"
    click_on "Back"
  end

  test "updating a Cars list" do
    visit cars_lists_url
    click_on "Edit", match: :first

    click_on "Update Cars list"

    assert_text "Cars list was successfully updated"
    click_on "Back"
  end

  test "destroying a Cars list" do
    visit cars_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cars list was successfully destroyed"
  end
end
