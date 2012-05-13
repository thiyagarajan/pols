class CreateVictories < ActiveRecord::Migration
  def change
    create_table :victories do |t|
      t.integer :user_id
      t.string :title
      t.string :problem
      t.string :solution
      t.timestamps
    end
  end
end
