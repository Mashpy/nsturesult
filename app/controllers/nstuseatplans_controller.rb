class NstuseatplansController < ApplicationController
  def index
    @seatplan = Nstuseatplan.search(params[:search])
  end
end
