class CreateRecordforthesisawards < ActiveRecord::Migration
  def change
    create_table :recordforthesisawards do |t|
      
      t.string :conference_or_journal
      t.string :name
      t.date :date
      t.text :citation
      t.timestamps null: false
    end
  end
end
