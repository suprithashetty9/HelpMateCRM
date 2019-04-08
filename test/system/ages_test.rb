require "application_system_test_case"

class AgesTest < ApplicationSystemTestCase
  setup do
    @age = ages(:one)
  end

  test "visiting the index" do
    visit ages_url
    assert_selector "h1", text: "Ages"
  end

  test "creating a Age" do
    visit ages_url
    click_on "New Age"

    fill_in "Age", with: @age.age
    click_on "Create Age"

    assert_text "Age was successfully created"
    click_on "Back"
  end

  test "updating a Age" do
    visit ages_url
    click_on "Edit", match: :first

    fill_in "Age", with: @age.age
    click_on "Update Age"

    assert_text "Age was successfully updated"
    click_on "Back"
  end

  test "destroying a Age" do
    visit ages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Age was successfully destroyed"
  end
end
