class ExamineesDetails < ActiveRecord::Base
  belongs_to :examinee
  def self.search(search) 
    joins(:examinee).where('roll_number RLIKE?', "[[:<:]]#{search}[[:>:]]")
  end
end