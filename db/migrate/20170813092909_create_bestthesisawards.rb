class CreateBestthesisawards < ActiveRecord::Migration
  def change
    create_table :bestthesisawards do |t|

      t.timestamps null: false
    end
  end
end
