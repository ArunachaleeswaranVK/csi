class CreateIndividualserviceawards < ActiveRecord::Migration
  def change
    create_table :individualserviceawards do |t|
      t.string :applying_for
      t.string :region
      t.string :chapter
      t.string :applicant_name
      t.string :applicant_csi_mem_no
      t.date :applicant_csi_mem_since
      t.string :applicant_phone
      t.string :applicant_mobile
      t.string :applicant_email
      t.date :applicant_dob
      t.string :applicant_educational_qualification
      t.string :applicant_experience
      
      t.string :address
      t.string :phone
      t.string :email
      
      t.text :membership_in_other_societies
      t.text :publication_details
      t.text :other_info
      t.timestamps null: false
    end
  end
end
