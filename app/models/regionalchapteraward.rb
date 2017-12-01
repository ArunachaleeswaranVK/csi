class Regionalchapteraward < ActiveRecord::Base
    belongs_to :user
    
    has_many :eventsforregionalchapterawards , dependent: :destroy
    accepts_nested_attributes_for :eventsforregionalchapterawards , allow_destroy: true 
    
    has_many :techactivitiesregionalchapterawards , dependent: :destroy
    accepts_nested_attributes_for :techactivitiesregionalchapterawards , allow_destroy: true 
    
    has_many :newslettersforregionalchapterawards , dependent: :destroy
    accepts_nested_attributes_for :newslettersforregionalchapterawards , allow_destroy: true 
    
    
    def self.to_csv
    attributes = %w{id members_number_till_previous_year members_percentage_till_previous_year
    members_number_till_current_year members_percentage_till_current_year
    student_branch_number_previous_year student_branch_number_current_year
    details_deputed_memeber other_info user_id chapter category
    
    
    
    techactivitiesregionalchapterawards_id activity_name remarks regionalchapteraward_id
    
    newslettersforregionalchapterawards_id date_of_publication 
        
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |regionalchapteraward|
               regionalchapteraward.techactivitiesregionalchapterawards.each do |techactivitiesregionalchapteraward|
                #   csv << bestcsiinternationalstudentseventhost.attributes.merge(internationalevent.competetion_name.to_s).values_at(*attributes)
                  csv <<  [regionalchapteraward.id, regionalchapteraward.members_number_till_previous_year , 
                  regionalchapteraward.members_percentage_till_previous_year , regionalchapteraward.members_number_till_current_year ,
                  regionalchapteraward.members_percentage_till_current_year, regionalchapteraward.student_branch_number_previous_year,
                  regionalchapteraward.student_branch_number_current_year,
                  regionalchapteraward.details_deputed_memeber , regionalchapteraward.other_info, 
                  regionalchapteraward.user_id , 
                  regionalchapteraward.chapter , regionalchapteraward.category ,
                  
                  techactivitiesregionalchapteraward.id , techactivitiesregionalchapteraward.activity_name ,
                  techactivitiesregionalchapteraward.remarks , techactivitiesregionalchapteraward.regionalchapteraward_id
                  ]
               end
              
                regionalchapteraward.newslettersforregionalchapterawards.each do |newslettersforregionalchapteraward|
                #   csv << bestcsiinternationalstudentseventhost.attributes.merge(internationalevent.competetion_name.to_s).values_at(*attributes)
                  csv <<  [
                  
                  
                  
                  newslettersforregionalchapteraward.id,
                  newslettersforregionalchapteraward.date_of_publication]
              end
      end
    end  
   
    end
end
