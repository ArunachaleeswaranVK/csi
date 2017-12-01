class Studentbranchactivist < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    belongs_to :user
    has_many :eventdetailsbystudentactivists , dependent: :destroy
    accepts_nested_attributes_for :eventdetailsbystudentactivists , allow_destroy: true
    
    
    def self.to_csv
    attributes = %w{id csi_volunteer_name csi_volunteer_email csi_volunteer_id valid_till volunteers_added imno user_id
        eventdetailsbystudentactivists_id event_name event_place role_played studentbranchactivist_id
        
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |studentbranchactivist|
               studentbranchactivist.eventdetailsbystudentactivists.each do |eventdetailsbystudentactivist|
               
                  csv <<  [studentbranchactivist.id, studentbranchactivist.csi_volunteer_name ,
                  studentbranchactivist.csi_volunteer_email , studentbranchactivist.csi_volunteer_id , 
                  studentbranchactivist.valid_till, studentbranchactivist.volunteers_added,
                  studentbranchactivist.imno,
                  studentbranchactivist.user_id,eventdetailsbystudentactivist.id , eventdetailsbystudentactivist.event_name,
                  eventdetailsbystudentactivist.event_place ,
                  eventdetailsbystudentactivist.role_played ,eventdetailsbystudentactivist.studentbranchactivist_id]
               end
      end
    end
    
    
    end 
    
    
end
