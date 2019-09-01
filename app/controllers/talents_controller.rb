class TalentsController < ApplicationController
  def index

  end

  def new
    @talent = Talent.new
  end

  def create
    @talent = Talent.new(talent_params)

    if  @talent.save
      logger.debug @talent.errors.inspect
      redirect_to(root_path)
    else
      logger.debug @talent.errors.inspect
      render 'new'
    end
  end

  private
  def talent_params
    params.require(:talent).permit(:name, :sex, :tel, :visa_id, :edu_level, :birthday, :email, :japanese_level, :password, :password_confirmation)
  end

end
