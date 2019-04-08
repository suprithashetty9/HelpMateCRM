require "application_system_test_case"

class TicketAttachmentsTest < ApplicationSystemTestCase
  setup do
    @ticket_attachment = ticket_attachments(:one)
  end

  test "visiting the index" do
    visit ticket_attachments_url
    assert_selector "h1", text: "Ticket Attachments"
  end

  test "creating a Ticket attachment" do
    visit ticket_attachments_url
    click_on "New Ticket Attachment"

    fill_in "Ticketattachment", with: @ticket_attachment.ticketattachment
    click_on "Create Ticket attachment"

    assert_text "Ticket attachment was successfully created"
    click_on "Back"
  end

  test "updating a Ticket attachment" do
    visit ticket_attachments_url
    click_on "Edit", match: :first

    fill_in "Ticketattachment", with: @ticket_attachment.ticketattachment
    click_on "Update Ticket attachment"

    assert_text "Ticket attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket attachment" do
    visit ticket_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket attachment was successfully destroyed"
  end
end
