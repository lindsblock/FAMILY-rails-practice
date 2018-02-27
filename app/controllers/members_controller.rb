class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  #GET
  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to members_path
    else
      render :new
    end
  end

  private
    def member_params
      params.require(:member).permit(:name, :age, :gender, :eye_color, :hair_color)
    end
end
