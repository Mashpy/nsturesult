class CreateExaminees < ActiveRecord::Migration
  def change
    create_table :examinees do |t|
      t.string :unit
      t.integer :roll_number

      t.timestamps
    end
  end
end
