class Studentmaxpublishing < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    belongs_to :user
    
    has_many :publishingdetailbystudents , dependent: :destroy
    accepts_nested_attributes_for :publishingdetailbystudents , allow_destroy: true
    
    
    def self.to_csv
    attributes = %w{id csi_volunteer_name csi_volunteer_email csi_volunteer_id valid_till
    imno user_id 
    publishingdetailbystudents_id no_of_articles_published article_title published_in date_of_publishing
    studentmaxpublishing_id
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |studentmaxpublishing|
               studentmaxpublishing.publishingdetailbystudents.each do |publishingdetailbystudent|
                
                  csv <<  [studentmaxpublishing.id, studentmaxpublishing.csi_volunteer_name , studentmaxpublishing.csi_volunteer_email ,
                  studentmaxpublishing.csi_volunteer_id , 
                  studentmaxpublishing.valid_till, studentmaxpublishing.imno, studentmaxpublishing.user_id,
                  
                  publishingdetailbystudent.id , publishingdetailbystudent.no_of_articles_published ,
                  publishingdetailbystudent.article_title , publishingdetailbystudent.published_in ,
                  publishingdetailbystudent.date_of_publishing ,  publishingdetailbystudent.studentmaxpublishing_id  ]
               end
      end
    end
    
    
    end  
    
 
end
