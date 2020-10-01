class RecordsController < ApplicationController
  def index
    @record = Record.new
    @duty = Duty.new
    @member = Member.new
    @record = Record.order(id: :asc)
    @member = Member.order(id: :asc)
  end

  def create
    member_ids = params[:name].map(&:to_i)
    duty_ids = params[:title].map(&:to_i)
    duty_people_numbers = params[:people].map(&:to_i)

    # 「memberの人数」と 「people の人数の合計」が一致しているかどうかを確認
    if member_ids.size == duty_people_numbers.sum
      @members = Member.where(id: member_ids)
      @duties = Duty.where(id: duty_ids)
      # @duties = params[:title].shuffle!
      # @members = params[:name].shuffle!
    else
      redirect_to root_path
    end
  end

  private

  def record_params
    params.require(:record).permit(:member_id, :counter_id, :duty_id)
  end
end
