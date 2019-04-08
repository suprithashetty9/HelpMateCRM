class CallerTypesController < ApplicationController
  before_action :set_caller_type, only: [:show, :edit, :update, :destroy]

  # GET /caller_types
  # GET /caller_types.json
  def index
    @caller_types = CallerType.all
  end

  # GET /caller_types/1
  # GET /caller_types/1.json
  def show
  end

  # GET /caller_types/new
  def new
    @caller_type = CallerType.new
  end

  # GET /caller_types/1/edit
  def edit
  end

  # POST /caller_types
  # POST /caller_types.json
  def create
    @caller_type = CallerType.new(caller_type_params)

    respond_to do |format|
      if @caller_type.save
        format.html { redirect_to @caller_type, notice: 'Caller type was successfully created.' }
        format.json { render :show, status: :created, location: @caller_type }
      else
        format.html { render :new }
        format.json { render json: @caller_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caller_types/1
  # PATCH/PUT /caller_types/1.json
  def update
    respond_to do |format|
      if @caller_type.update(caller_type_params)
        format.html { redirect_to @caller_type, notice: 'Caller type was successfully updated.' }
        format.json { render :show, status: :ok, location: @caller_type }
      else
        format.html { render :edit }
        format.json { render json: @caller_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caller_types/1
  # DELETE /caller_types/1.json
  def destroy
    @caller_type.destroy
    respond_to do |format|
      format.html { redirect_to caller_types_url, notice: 'Caller type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caller_type
      @caller_type = CallerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caller_type_params
      params.require(:caller_type).permit(:callertype)
    end
end
