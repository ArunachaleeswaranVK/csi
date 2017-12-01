class Bestcsiinternationalstudentseventhost < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    
    has_many :internationalevents , dependent: :destroy
    accepts_nested_attributes_for :internationalevents , allow_destroy: true 
    
    belongs_to :user
    
    # accepts_nested_attributes_for :addresses,
                    #          reject_if: ->(attrs) { attrs['city'].blank? || attrs['street'].blank? }
                    
    def self.to_csv
    attributes = %w{id volunteers_added imno user_id}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |bestcsiinternationalstudentseventhost|
               bestcsiinternationalstudentseventhost.internationalevents.each do |internationalevent|
                #   csv << bestcsiinternationalstudentseventhost.attributes.merge(internationalevent.competetion_name.to_s).values_at(*attributes)
                  csv <<  [bestcsiinternationalstudentseventhost.id, bestcsiinternationalstudentseventhost.volunteers_added , bestcsiinternationalstudentseventhost.imno , bestcsiinternationalstudentseventhost.user_id , internationalevent.competetion_name, internationalevent.date_of_event, internationalevent.no_of_students_from_abroad,
                  internationalevent.country_name]
               end
      end
    end
    
    
    end 
    
    
end


