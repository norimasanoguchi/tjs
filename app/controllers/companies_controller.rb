class CompaniesController < ApplicationController
  def index

  end

  def new
    @company = Company.new
  end

  def create
    @company = TCompany.new(talent_params)

    if  @company.save
      logger.debug @company.errors.inspect
      redirect_to(root_path)
    else
      logger.debug @company.errors.inspect
      render 'new'
    end
  end

  private
  def talent_params
    params.require(:company).permit(:name, :contact_person, :tel, :admin, :password, :password_confirmation)
  end
end
