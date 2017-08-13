class CreatePaperpresenterintconferences < ActiveRecord::Migration
  def change
    create_table :paperpresenterintconferences do |t|

      t.timestamps null: false
    end
  end
end
