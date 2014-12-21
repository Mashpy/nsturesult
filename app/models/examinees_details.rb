class ExamineesDetails < ActiveRecord::Base
  belongs_to :examinee
  def self.search(search) 
    where('name RLIKE?', "[[:<:]]#{search}[[:>:]]")
  end
end
