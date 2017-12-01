class Highestsponsorshipofcsievent < ActiveRecord::Base
    belongs_to :institute , foreign_key: "imno"
    belongs_to :user
    
    has_many :supportforcsievents , dependent: :destroy
    accepts_nested_attributes_for :supportforcsievents , allow_destroy: true 
    
    def self.to_csv
    attributes = %w{id volunteers_added imno user_id 
    supportforcsievents_id date_of_event name_of_event organised_by support_details monetary_value highestsponsorshipofcsievent_id }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |highestsponsorshipofcsievent|
               highestsponsorshipofcsievent.supportforcsievents.each do |supportforcsievent|
                
                  csv <<  [highestsponsorshipofcsievent.id, highestsponsorshipofcsievent.volunteers_added,
                  highestsponsorshipofcsievent.imno,highestsponsorshipofcsievent.user_id ,
                  
                  supportforcsievent.id ,supportforcsievent.date_of_event, supportforcsievent.name_of_event,
                  supportforcsievent.organised_by , 
                  supportforcsievent.support_details , supportforcsievent.monetary_value , 
                  supportforcsievent.highestsponsorshipofcsievent_id  ]
               end
      end
    end
    
    
    end 
    
     
    
    
end
