class Talents::SessionsController < ApplicationController
  def new
    @talent = Talent.new
  end

  def create
    @talent = login(params[:email],params[:password])
    # @talent = login(talent_session_params)

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
  # def talent_session_params
  #   params.require(:talent).permit(:email, :password)
  # end
end
