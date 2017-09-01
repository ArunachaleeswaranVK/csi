class CreateDetailsfornewsletterawards < ActiveRecord::Migration
  def change
    create_table :detailsfornewsletterawards do |t|
   
      t.date :date_of_publication
      t.string :title
      t.text :remarks
      t.integer :newsletteraward_id
      t.timestamps null: false
    end
  end
end
