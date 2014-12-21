class AddResultDetailsRefToExamineesDetails < ActiveRecord::Migration
  def change
    add_reference :examinees_details, :results_details, index: true
  end
end
