class CompaniesController < ApplicationController
  def index

  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if  @company.save
      logger.debug @company.errors.inspect
      redirect_to(root_path)
    else
      logger.debug @company.errors.inspect
      render 'new'
    end
  end

  private
  def company_params
    params.require(:company).permit(:name, :email, :contact_person, :tel, :admin, :password, :password_confirmation)
  end
end
