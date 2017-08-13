class CreatePublishingdetailbyfaculties < ActiveRecord::Migration
  def change
    create_table :publishingdetailbyfaculties do |t|
      
      t.string :article_title
      t.string :published_in
      t.date :date_of_publishing
      
      t.timestamps null: false
    end
  end
end
