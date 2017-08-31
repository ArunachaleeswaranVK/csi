class CreateTechactivitiesregionalchapterawards < ActiveRecord::Migration
  def change
    create_table :techactivitiesregionalchapterawards do |t|
      t.string :activity_name
      t.text :remarks
      t.integer :regionalchapteraward_id
      t.timestamps null: false
    end
  end
end
