class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def index
    @members = Member.order(id: :asc)
  end

  def create
    member = Member.create!(member_params)
    redirect_to member
  end

  def show
    @member = Member.find(params[:id])
  end

  def destroy
    member = Member.find(params[:id])
    member.destroy!
    redirect_to member
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    member.update!(member_params)
    redirect_to member
  end

  private

  def member_params
    params.require(:member).permit(:name)
  end
end
