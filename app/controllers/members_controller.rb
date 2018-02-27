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

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to members_path
    else
      render :edit
    end
  end

  def destroy
    Member.find(params[:id]).destroy
    redirect_to members_path
  end


  private
    def member_params
      params.require(:member).permit(:name, :age, :gender, :eye_color, :hair_color)
    end
end
