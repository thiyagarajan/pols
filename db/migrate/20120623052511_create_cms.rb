class CreateCms < ActiveRecord::Migration
  def change
    create_table :cms do |t|
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end
