class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :level

      t.timestamps null: false
    end
  end
end
