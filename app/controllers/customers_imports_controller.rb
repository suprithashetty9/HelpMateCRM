class CustomersImportsController < ApplicationController
  def new
    @customers_import = CustomersImport.new
  end

  def create
    @customers_import = CustomersImport.new(params[:customers_import])
    if @customers_import.save
      redirect_to customers_path
    else
      render :new
    end
  end
end
