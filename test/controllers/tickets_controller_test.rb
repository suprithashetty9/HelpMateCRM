require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { batchnumber: @ticket.batchnumber, caller_type_id: @ticket.caller_type_id, customer_id: @ticket.customer_id, description: @ticket.description, employee_id: @ticket.employee_id, expirydate: @ticket.expirydate, manufacturedate: @ticket.manufacturedate, product_id: @ticket.product_id, purchasepoint: @ticket.purchasepoint, resolution: @ticket.resolution, source_id: @ticket.source_id, ticket_status_id: @ticket.ticket_status_id, ticket_type_id: @ticket.ticket_type_id } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { batchnumber: @ticket.batchnumber, caller_type_id: @ticket.caller_type_id, customer_id: @ticket.customer_id, description: @ticket.description, employee_id: @ticket.employee_id, expirydate: @ticket.expirydate, manufacturedate: @ticket.manufacturedate, product_id: @ticket.product_id, purchasepoint: @ticket.purchasepoint, resolution: @ticket.resolution, source_id: @ticket.source_id, ticket_status_id: @ticket.ticket_status_id, ticket_type_id: @ticket.ticket_type_id } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
