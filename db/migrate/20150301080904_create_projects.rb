class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :body
      t.string :name
      t.text :description
      t.string :url
      t.string :picture

      t.timestamps null: false
    end
  end
end
