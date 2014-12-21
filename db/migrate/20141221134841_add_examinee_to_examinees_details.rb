class AddExamineeToExamineesDetails < ActiveRecord::Migration
  def change
    add_reference :examinees_details, :examinee, index: true
  end
end
