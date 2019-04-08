class TicketTranscationsController < ApplicationController
  before_action :set_ticket_transcation, only: [:show, :edit, :update, :destroy]

  # GET /ticket_transcations
  # GET /ticket_transcations.json
  def index
    @ticket_transcations = TicketTranscation.all
  end

  # GET /ticket_transcations/1
  # GET /ticket_transcations/1.json
  def show
  end

  # GET /ticket_transcations/new
  def new
    @ticket_transcation = TicketTranscation.new
  end

  # GET /ticket_transcations/1/edit
  def edit
  end

  # POST /ticket_transcations
  # POST /ticket_transcations.json
  def create
    @ticket_transcation = TicketTranscation.new(ticket_transcation_params)

    respond_to do |format|
      if @ticket_transcation.save
        format.html { redirect_to @ticket_transcation, notice: 'Ticket transcation was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_transcation }
      else
        format.html { render :new }
        format.json { render json: @ticket_transcation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_transcations/1
  # PATCH/PUT /ticket_transcations/1.json
  def update
    respond_to do |format|
      if @ticket_transcation.update(ticket_transcation_params)
        format.html { redirect_to @ticket_transcation, notice: 'Ticket transcation was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_transcation }
      else
        format.html { render :edit }
        format.json { render json: @ticket_transcation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_transcations/1
  # DELETE /ticket_transcations/1.json
  def destroy
    @ticket_transcation.destroy
    respond_to do |format|
      format.html { redirect_to ticket_transcations_url, notice: 'Ticket transcation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_transcation
      @ticket_transcation = TicketTranscation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_transcation_params
      params.require(:ticket_transcation).permit(:notes, :ticket_status_id, :ticket_id, :ticket_sub_status_id, :ticket_attachment_id)
    end
end
