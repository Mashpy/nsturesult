class CreateExamineesDetails < ActiveRecord::Migration
  def change
    create_table :examinees_details do |t|
      t.string :name
      t.string :father_name
      t.float :ssc_roll
      t.float :ssc_gpa
      t.float :hsc_roll
      t.float :hsc_gpa
      t.string :quota

      t.timestamps
    end
  end
end
