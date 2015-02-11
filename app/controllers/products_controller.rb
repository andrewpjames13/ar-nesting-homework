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
  end

  private

  def product_params
    params.require(:product).permit(:department, :name, :price)
  end

end
