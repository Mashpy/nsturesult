class NsturesultsController < ApplicationController
  def index
    @examineesdetails = ExamineesDetails.search(params[:search])
    @examinees = Examinee.all
  end
end
