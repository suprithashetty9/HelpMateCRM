require 'test_helper'

class TicketAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_attachment = ticket_attachments(:one)
  end

  test "should get index" do
    get ticket_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_attachment_url
    assert_response :success
  end

  test "should create ticket_attachment" do
    assert_difference('TicketAttachment.count') do
      post ticket_attachments_url, params: { ticket_attachment: { ticketattachment: @ticket_attachment.ticketattachment } }
    end

    assert_redirected_to ticket_attachment_url(TicketAttachment.last)
  end

  test "should show ticket_attachment" do
    get ticket_attachment_url(@ticket_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_attachment_url(@ticket_attachment)
    assert_response :success
  end

  test "should update ticket_attachment" do
    patch ticket_attachment_url(@ticket_attachment), params: { ticket_attachment: { ticketattachment: @ticket_attachment.ticketattachment } }
    assert_redirected_to ticket_attachment_url(@ticket_attachment)
  end

  test "should destroy ticket_attachment" do
    assert_difference('TicketAttachment.count', -1) do
      delete ticket_attachment_url(@ticket_attachment)
    end

    assert_redirected_to ticket_attachments_url
  end
end
