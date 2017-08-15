class CreateBestthesisawards < ActiveRecord::Migration
  def change
    create_table :bestthesisawards do |t|
      t.string :candidate_csi_membership_no
      t.date :valid_till
      
      t.timestamps null: false
    end
  end
end
