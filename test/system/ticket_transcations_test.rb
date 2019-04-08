require "application_system_test_case"

class TicketTranscationsTest < ApplicationSystemTestCase
  setup do
    @ticket_transcation = ticket_transcations(:one)
  end

  test "visiting the index" do
    visit ticket_transcations_url
    assert_selector "h1", text: "Ticket Transcations"
  end

  test "creating a Ticket transcation" do
    visit ticket_transcations_url
    click_on "New Ticket Transcation"

    fill_in "Notes", with: @ticket_transcation.notes
    fill_in "Ticket attachment", with: @ticket_transcation.ticket_attachment_id
    fill_in "Ticket", with: @ticket_transcation.ticket_id
    fill_in "Ticket status", with: @ticket_transcation.ticket_status_id
    fill_in "Ticket sub status", with: @ticket_transcation.ticket_sub_status_id
    click_on "Create Ticket transcation"

    assert_text "Ticket transcation was successfully created"
    click_on "Back"
  end

  test "updating a Ticket transcation" do
    visit ticket_transcations_url
    click_on "Edit", match: :first

    fill_in "Notes", with: @ticket_transcation.notes
    fill_in "Ticket attachment", with: @ticket_transcation.ticket_attachment_id
    fill_in "Ticket", with: @ticket_transcation.ticket_id
    fill_in "Ticket status", with: @ticket_transcation.ticket_status_id
    fill_in "Ticket sub status", with: @ticket_transcation.ticket_sub_status_id
    click_on "Update Ticket transcation"

    assert_text "Ticket transcation was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket transcation" do
    visit ticket_transcations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket transcation was successfully destroyed"
  end
end
