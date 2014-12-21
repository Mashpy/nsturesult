class NsturesultsController < ApplicationController
  def index
    @examineesdetails = ExamineesDetails.search(params[:search])
    @examinees = Examinee.all
    @result = Result.all
    @resultdetails = ResultsDetails.all
  end
end
