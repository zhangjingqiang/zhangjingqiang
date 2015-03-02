class AddName1Description1Url1Picture1ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :name1, :string
    add_column :projects, :description1, :text
    add_column :projects, :url1, :string
    add_column :projects, :picture1, :string
  end
end
