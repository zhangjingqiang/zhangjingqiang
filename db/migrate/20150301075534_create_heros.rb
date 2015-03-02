class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
