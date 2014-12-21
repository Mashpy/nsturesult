class AddResultRefToExamineesDetails < ActiveRecord::Migration
  def change
    add_reference :examinees_details, :result, index: true
  end
end
