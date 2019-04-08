require "application_system_test_case"

class TagUsersTest < ApplicationSystemTestCase
  setup do
    @tag_user = tag_users(:one)
  end

  test "visiting the index" do
    visit tag_users_url
    assert_selector "h1", text: "Tag Users"
  end

  test "creating a Tag user" do
    visit tag_users_url
    click_on "New Tag User"

    fill_in "Tagusers", with: @tag_user.tagusers
    click_on "Create Tag user"

    assert_text "Tag user was successfully created"
    click_on "Back"
  end

  test "updating a Tag user" do
    visit tag_users_url
    click_on "Edit", match: :first

    fill_in "Tagusers", with: @tag_user.tagusers
    click_on "Update Tag user"

    assert_text "Tag user was successfully updated"
    click_on "Back"
  end

  test "destroying a Tag user" do
    visit tag_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tag user was successfully destroyed"
  end
end
