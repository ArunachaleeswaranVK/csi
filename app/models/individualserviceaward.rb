class Individualserviceaward < ActiveRecord::Base
    
    belongs_to :user
    has_many :contributiontocsiindserviceawards , dependent: :destroy
    accepts_nested_attributes_for :contributiontocsiindserviceawards , allow_destroy: true 
    
    has_many :roleincsieventindserviceawards , dependent: :destroy
    accepts_nested_attributes_for :roleincsieventindserviceawards , allow_destroy: true 
    
    def self.to_csv
    attributes = %w{id applying_for applicant_name
    applicant_csi_mem_no applicant_csi_mem_since applicant_phone applicant_mobile applicant_email 
    applicant_dob applicant_educational_qualification applicant_experience membership_in_other_societies
    publication_details other_info
    role_in_csi_membership_promotion_in_chapter chapter user_id
    
    
    
    roleincsieventindserviceawards_id date_of_event name_of_event type_of_event surplus_amount role no_of_paper_received
    individualserviceaward_id
   
        
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |individualserviceaward|
               individualserviceaward.roleincsieventindserviceawards.each do |roleincsieventindserviceaward|
                #   csv << bestcsiinternationalstudentseventhost.attributes.merge(internationalevent.competetion_name.to_s).values_at(*attributes)
                  csv <<  [individualserviceaward.id, individualserviceaward.applying_for , 
                  
                  individualserviceaward.applicant_name , individualserviceaward.applicant_csi_mem_no ,
                  
                  individualserviceaward.applicant_csi_mem_since, individualserviceaward.applicant_phone,
                  
                  individualserviceaward.applicant_mobile,
                  
                  individualserviceaward.applicant_email , individualserviceaward.applicant_dob, 
                  
                  individualserviceaward.applicant_educational_qualification , 
                  
                  individualserviceaward.applicant_experience , individualserviceaward.membership_in_other_societies ,
                  
                  individualserviceaward.publication_details , individualserviceaward.other_info, 
                  individualserviceaward.role_in_csi_membership_promotion_in_chapter ,
                  
                  individualserviceaward.chapter , individualserviceaward.user_id,
                  
                  roleincsieventindserviceaward.id , roleincsieventindserviceaward.date_of_event ,
                  roleincsieventindserviceaward.name_of_event, roleincsieventindserviceaward.type_of_event ,
                  roleincsieventindserviceaward.surplus_amount, roleincsieventindserviceaward.role ,
                  roleincsieventindserviceaward.no_of_paper_received ,
                  roleincsieventindserviceaward.individualserviceaward_id]
               end
               
               
      end
    end  
   
    end 
end
