class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.find(prarms[:id])
    if @company.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

    def company_params
      params.require(:company).permit(:name, :suffix, :catch_phrase, :email, :start_date, :industry)
    end

end
