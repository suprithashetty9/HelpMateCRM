require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "creating a Ticket" do
    visit tickets_url
    click_on "New Ticket"

    fill_in "Batchnumber", with: @ticket.batchnumber
    fill_in "Caller type", with: @ticket.caller_type_id
    fill_in "Customer", with: @ticket.customer_id
    fill_in "Description", with: @ticket.description
    fill_in "Employee", with: @ticket.employee_id
    fill_in "Expirydate", with: @ticket.expirydate
    fill_in "Manufacturedate", with: @ticket.manufacturedate
    fill_in "Product", with: @ticket.product_id
    fill_in "Purchasepoint", with: @ticket.purchasepoint
    fill_in "Resolution", with: @ticket.resolution
    fill_in "Source", with: @ticket.source_id
    fill_in "Ticket status", with: @ticket.ticket_status_id
    fill_in "Ticket type", with: @ticket.ticket_type_id
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "updating a Ticket" do
    visit tickets_url
    click_on "Edit", match: :first

    fill_in "Batchnumber", with: @ticket.batchnumber
    fill_in "Caller type", with: @ticket.caller_type_id
    fill_in "Customer", with: @ticket.customer_id
    fill_in "Description", with: @ticket.description
    fill_in "Employee", with: @ticket.employee_id
    fill_in "Expirydate", with: @ticket.expirydate
    fill_in "Manufacturedate", with: @ticket.manufacturedate
    fill_in "Product", with: @ticket.product_id
    fill_in "Purchasepoint", with: @ticket.purchasepoint
    fill_in "Resolution", with: @ticket.resolution
    fill_in "Source", with: @ticket.source_id
    fill_in "Ticket status", with: @ticket.ticket_status_id
    fill_in "Ticket type", with: @ticket.ticket_type_id
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket" do
    visit tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket was successfully destroyed"
  end
end
