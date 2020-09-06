class HomesController < ApplicationController
  def index
    @record = Record.new
    @members = Member.order(id: :asc)
  end
end
