class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.float :marks
      t.integer :merit
      t.string :list

      t.timestamps
    end
  end
end
