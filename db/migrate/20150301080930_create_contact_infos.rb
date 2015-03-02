class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.text :body1
      t.text :body2
      t.text :body3

      t.timestamps null: false
    end
  end
end
