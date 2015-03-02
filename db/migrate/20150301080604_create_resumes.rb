class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :year
      t.string :title
      t.string :period
      t.text :body

      t.timestamps null: false
    end
  end
end
