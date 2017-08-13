class CreatePublishingdetailbystudents < ActiveRecord::Migration
  def change
    create_table :publishingdetailbystudents do |t|
      
      t.integer :no_of_articles_published
      t.string :article_title
      t.string :published_in
      t.date :date_of_publishing
      
      t.timestamps null: false
    end
  end
end
