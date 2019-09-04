class Talents::SessionsController < ApplicationController
  def new
    @talent = Talent.new
  end

  def create
    @talent = login(params[:email],params[:password])

    if @talent
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
