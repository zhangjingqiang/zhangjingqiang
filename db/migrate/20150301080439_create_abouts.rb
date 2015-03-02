class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :body
      t.text :music
      t.text :movies
      t.text :traveling
      t.text :books

      t.timestamps null: false
    end
  end
end
