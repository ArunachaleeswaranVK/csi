class CreateFacmaxpublishings < ActiveRecord::Migration
  def change
    create_table :facmaxpublishings do |t|

      t.timestamps null: false
    end
  end
end
