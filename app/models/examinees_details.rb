class ExamineesDetails < ActiveRecord::Base
  belongs_to :examinee
  belongs_to :result
  belongs_to :results_details
  def self.search(search) 
    joins(:examinee).where('roll_number RLIKE?', "[[:<:]]#{search}[[:>:]]")
  end
end