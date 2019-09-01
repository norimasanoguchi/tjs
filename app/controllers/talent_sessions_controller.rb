class TalentSessionsController < ApplicationController
  def new
    @talent = Talent.new
  end

  def create
    @talent = login(params[:email],params[:password])

    if @talent
      redirect_back_or_to(:talents, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:talents, notice: 'Logged out!')
  end
end
