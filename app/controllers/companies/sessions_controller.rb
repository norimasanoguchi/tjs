class Companies::SessionsController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = login(params[:email],params[:password])

    if @company
      redirect_back_or_to(root_path, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end

  private

end
