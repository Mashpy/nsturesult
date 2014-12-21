class CreateResultsDetails < ActiveRecord::Migration
  def change
    create_table :results_details do |t|
      t.float :physics
      t.float :chemistry
      t.float :math
      t.float :biology
      t.float :ban_eng
      t.float :bangla
      t.float :english
      t.float :analytical_ability
      t.float :general_knowledge

      t.timestamps
    end
  end
end
