class CreateFacmaxpublishings < ActiveRecord::Migration
  def change
    create_table :facmaxpublishings do |t|
      t.string :candidate_csi_membership_no
      t.date :valid_till
      t.boolean :has_student_branch
      t.timestamps null: false
    end
  end
end
