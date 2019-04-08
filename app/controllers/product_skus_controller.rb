class ProductSkusController < ApplicationController
  before_action :set_product_sku, only: [:show, :edit, :update, :destroy]

  # GET /product_skus
  # GET /product_skus.json
  def index
    @product_skus = ProductSku.all
  end

  # GET /product_skus/1
  # GET /product_skus/1.json
  def show
  end

  # GET /product_skus/new
  def new
    @product_sku = ProductSku.new
  end

  # GET /product_skus/1/edit
  def edit
  end

  # POST /product_skus
  # POST /product_skus.json
  def create
    @product_sku = ProductSku.new(product_sku_params)

    respond_to do |format|
      if @product_sku.save
        format.html { redirect_to @product_sku, notice: 'Product sku was successfully created.' }
        format.json { render :show, status: :created, location: @product_sku }
      else
        format.html { render :new }
        format.json { render json: @product_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_skus/1
  # PATCH/PUT /product_skus/1.json
  def update
    respond_to do |format|
      if @product_sku.update(product_sku_params)
        format.html { redirect_to @product_sku, notice: 'Product sku was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_sku }
      else
        format.html { render :edit }
        format.json { render json: @product_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_skus/1
  # DELETE /product_skus/1.json
  def destroy
    @product_sku.destroy
    respond_to do |format|
      format.html { redirect_to product_skus_url, notice: 'Product sku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_sku
      @product_sku = ProductSku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_sku_params
      params.require(:product_sku).permit(:productsku, :createdby, :product_id)
    end
end
