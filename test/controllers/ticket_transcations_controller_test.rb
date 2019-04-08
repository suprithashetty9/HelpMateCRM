require 'test_helper'

class TicketTranscationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_transcation = ticket_transcations(:one)
  end

  test "should get index" do
    get ticket_transcations_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_transcation_url
    assert_response :success
  end

  test "should create ticket_transcation" do
    assert_difference('TicketTranscation.count') do
      post ticket_transcations_url, params: { ticket_transcation: { notes: @ticket_transcation.notes, ticket_attachment_id: @ticket_transcation.ticket_attachment_id, ticket_id: @ticket_transcation.ticket_id, ticket_status_id: @ticket_transcation.ticket_status_id, ticket_sub_status_id: @ticket_transcation.ticket_sub_status_id } }
    end

    assert_redirected_to ticket_transcation_url(TicketTranscation.last)
  end

  test "should show ticket_transcation" do
    get ticket_transcation_url(@ticket_transcation)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_transcation_url(@ticket_transcation)
    assert_response :success
  end

  test "should update ticket_transcation" do
    patch ticket_transcation_url(@ticket_transcation), params: { ticket_transcation: { notes: @ticket_transcation.notes, ticket_attachment_id: @ticket_transcation.ticket_attachment_id, ticket_id: @ticket_transcation.ticket_id, ticket_status_id: @ticket_transcation.ticket_status_id, ticket_sub_status_id: @ticket_transcation.ticket_sub_status_id } }
    assert_redirected_to ticket_transcation_url(@ticket_transcation)
  end

  test "should destroy ticket_transcation" do
    assert_difference('TicketTranscation.count', -1) do
      delete ticket_transcation_url(@ticket_transcation)
    end

    assert_redirected_to ticket_transcations_url
  end
end
