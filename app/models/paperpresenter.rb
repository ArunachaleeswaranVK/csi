class Paperpresenter < ActiveRecord::Base
   
    belongs_to :user
    
    has_many :paperpresenterdetails , dependent: :destroy
    accepts_nested_attributes_for :paperpresenterdetails , allow_destroy: true
    
    def self.to_csv
    attributes = %w{id faculty_csi_membership_no valid_till faculty_name
    faculty_email faculty_number user_id  
    paperpresenterdetails_id name_of_conference date_of_conference organised_by 
    name_place_of_conference india_or_outside paperpresenter_id}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |paperpresenter|
               paperpresenter.paperpresenterdetails.each do |paperpresenterdetail|
               
                  csv <<  [paperpresenter.id, paperpresenter.faculty_csi_membership_no , paperpresenter.valid_till ,
                 paperpresenter.faculty_name, paperpresenter.faculty_email, paperpresenter.faculty_number ,paperpresenter.user_id,
                  
                  paperpresenterdetail.id , paperpresenterdetail.name_of_conference ,
                  paperpresenterdetail.date_of_conference , paperpresenterdetail.organised_by ,
                  paperpresenterdetail.name_place_of_conference ,
                  paperpresenterdetail.india_or_outside , paperpresenterdetail.paperpresenter_id]
               end
      end
    end
    
    
    end 
    
   
end
