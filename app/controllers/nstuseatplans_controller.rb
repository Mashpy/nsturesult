class NstuseatplansController < ApplicationController
  def index
      if params[:search].blank?
      @message=""
      else if params[:search]=~/^[0-9]*$/
      @seatplan = Nstuseatplan.search(params[:search])
      else
      @notdigit="You have entered a wrong roll no."
      end
      end
  end
end
