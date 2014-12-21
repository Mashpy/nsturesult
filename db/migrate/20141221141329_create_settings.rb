class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :parameter
      t.string :value

      t.timestamps
    end
  end
end
