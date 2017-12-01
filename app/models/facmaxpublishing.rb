class Facmaxpublishing < ActiveRecord::Base
   
    belongs_to :user
    
    has_many :publishingdetailbyfaculties , dependent: :destroy
    accepts_nested_attributes_for :publishingdetailbyfaculties , allow_destroy: true
    
    def self.to_csv
    attributes = %w{id candidate_csi_membership_no valid_till has_student_branch faculty_name
    faculty_email user_id publishingdetailbyfaculties_id article_title published_in date_of_publishing facmaxpublishing_id}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |facmaxpublishing|
               facmaxpublishing.publishingdetailbyfaculties.each do |publishingdetailbyfaculty|
                
                  csv <<  [facmaxpublishing.id, facmaxpublishing.candidate_csi_membership_no , facmaxpublishing.valid_till ,
                  facmaxpublishing.has_student_branch , 
                  facmaxpublishing.faculty_name, facmaxpublishing.faculty_email, facmaxpublishing.user_id,
                  
                  publishingdetailbyfaculty.id , publishingdetailbyfaculty.article_title ,
                  publishingdetailbyfaculty.published_in , publishingdetailbyfaculty.date_of_publishing ,
                  publishingdetailbyfaculty.facmaxpublishing_id  ]
               end
      end
    end
    
    
    end 
    
   
    
end
