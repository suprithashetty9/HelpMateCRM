require 'EscalateTicket'
require 'purchase_decorator'
class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
@customer = Customer.find(params[:customer_id])
@tickets = @customer.tickets
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
    @customer = Customer.find(params[:customer_id])
# For URL like /customers/1/tickets/2
@ticket = @customer.tickets.find(params[:id])
  end

  # GET /tickets/new
  def new
   @customer = Customer.find(params[:customer_id])
@ticket = @customer.tickets.build
  end

  # GET /customers/1/tickets/1/edit
  def edit
    @customer=Customer.find(params[:customer_id])
    @ticket =@customer.tickets.find(params[:id])
  end

  # POST /tickets
  # POST /tickets.json
  def create
   @customer = Customer.find(params[:customer_id])
# For URL like /customers/1/tickets
@ticket = @customer.tickets.build(params.require(:ticket).permit(:caller_type_id,:ticket_type_id, :product_id,:manufacturedate,:expirydate, :batchnumber,:purchasepoint, :description, :resolution,:ticket_status_id, :source_id, :employee_id, :sku, :type ))
myProduct = BasicProduct.new(500,@ticket.sku, @ticket.type)
if params[:ticket][:bodylotion].to_s.length > 0 then
  myProduct = BodyLotion.new(myProduct)
end
if params[:ticket][:bodylotionmoisturizer].to_s.length > 0 then
  myProduct = BodyLotionMoisturizer.new(myProduct)
end
if params[:ticket][:soap].to_s.length > 0 then
myProduct = Soap.new(myProduct)
end
if params[:ticket][:facewash].to_s.length > 0 then
myProduct = Facewash.new(myProduct)
end
if params[:ticket][:lipbalm].to_s.length > 0 then
myProduct = Lipbalm.new(myProduct)
end
@ticket.cost=myProduct.cost
@ticket.description=myProduct.details

if @ticket.save
# Save the review successfully
@tickettypeid = ticket_params[:ticket_type_id]
@typeid= @tickettypeid.to_i
@esc = EscalateTicket.check(@typeid)
 redirect_to customer_tickets_path(@customer,@ticket)
else
render :action => "new"
end
end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:caller_type_id, :ticket_type_id, :product_id, :manufacturedate, :expirydate, :batchnumber, :purchasepoint, :description, :resolution, :customer_id, :ticket_status_id, :source_id, :employee_id, :sku, :type)
    end
end
