require "application_system_test_case"

class CallerTypesTest < ApplicationSystemTestCase
  setup do
    @caller_type = caller_types(:one)
  end

  test "visiting the index" do
    visit caller_types_url
    assert_selector "h1", text: "Caller Types"
  end

  test "creating a Caller type" do
    visit caller_types_url
    click_on "New Caller Type"

    fill_in "Callertype", with: @caller_type.callertype
    click_on "Create Caller type"

    assert_text "Caller type was successfully created"
    click_on "Back"
  end

  test "updating a Caller type" do
    visit caller_types_url
    click_on "Edit", match: :first

    fill_in "Callertype", with: @caller_type.callertype
    click_on "Update Caller type"

    assert_text "Caller type was successfully updated"
    click_on "Back"
  end

  test "destroying a Caller type" do
    visit caller_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Caller type was successfully destroyed"
  end
end
