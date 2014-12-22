class CreateNstuseatplans < ActiveRecord::Migration
  def change
    create_table :nstuseatplans do |t|
      t.string :unit
      t.string :time
      t.string :center
      t.integer :roll_start
      t.integer :roll_end
      t.integer :total

      t.timestamps
    end
  end
end
