class TicketAttachmentsController < ApplicationController
  before_action :set_ticket_attachment, only: [:show, :edit, :update, :destroy]

  # GET /ticket_attachments
  # GET /ticket_attachments.json
  def index
    @ticket_attachments = TicketAttachment.all
  end

  # GET /ticket_attachments/1
  # GET /ticket_attachments/1.json
  def show
  end

  # GET /ticket_attachments/new
  def new
    @ticket_attachment = TicketAttachment.new
  end

  # GET /ticket_attachments/1/edit
  def edit
  end

  # POST /ticket_attachments
  # POST /ticket_attachments.json
  def create
    @ticket_attachment = TicketAttachment.new(ticket_attachment_params)

    respond_to do |format|
      if @ticket_attachment.save
        format.html { redirect_to @ticket_attachment, notice: 'Ticket attachment was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_attachment }
      else
        format.html { render :new }
        format.json { render json: @ticket_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_attachments/1
  # PATCH/PUT /ticket_attachments/1.json
  def update
    respond_to do |format|
      if @ticket_attachment.update(ticket_attachment_params)
        format.html { redirect_to @ticket_attachment, notice: 'Ticket attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_attachment }
      else
        format.html { render :edit }
        format.json { render json: @ticket_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_attachments/1
  # DELETE /ticket_attachments/1.json
  def destroy
    @ticket_attachment.destroy
    respond_to do |format|
      format.html { redirect_to ticket_attachments_url, notice: 'Ticket attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_attachment
      @ticket_attachment = TicketAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_attachment_params
      params.require(:ticket_attachment).permit(:ticketattachment)
    end
end
