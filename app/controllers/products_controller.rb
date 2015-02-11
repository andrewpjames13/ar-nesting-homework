class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @company = Company.find(params[:company_id])
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @company = Company.find(params[:company_id])
  end

  def create
    @company = Company.find(params[:company_id])
    @product = Product.new(product_params)
    @product.company_id = params[:company_id]
    if @product.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:department, :name, :price)
  end

end
