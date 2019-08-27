class TalentsController < ApplicationController

  def new
    @talent = Talent.new
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
