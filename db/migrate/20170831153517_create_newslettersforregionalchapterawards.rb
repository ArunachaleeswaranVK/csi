class CreateNewslettersforregionalchapterawards < ActiveRecord::Migration
  def change
    create_table :newslettersforregionalchapterawards do |t|
      t.date :date_of_publication
      t.string :title
      t.integer :regionalchapteraward_id
      t.timestamps null: false
    end
  end
end
