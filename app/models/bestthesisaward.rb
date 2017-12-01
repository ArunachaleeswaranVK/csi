class Bestthesisaward < ActiveRecord::Base
    
    belongs_to :user
    
    has_many :recordforthesisawards , dependent: :destroy
    accepts_nested_attributes_for :recordforthesisawards , allow_destroy: true
    
    def self.to_csv
    attributes = %w{id candidate_csi_membership_no valid_till name_of_nominating_institution address
        recognized_by reference_number_of_recognition date_of_recognition name_of_nominator designation_of_nominator
        nominator_email nominator_phone name_of_candidate candidate_email candidate_phone thesis_title defence_of_dissertation_date
        user_id recordforthesisawards_id conference_or_journal name date citation bestthesisaward_id
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |bestthesisaward|
               bestthesisaward.recordforthesisawards.each do |recordforthesisaward|
                #   csv << bestcsiinternationalstudentseventhost.attributes.merge(internationalevent.competetion_name.to_s).values_at(*attributes)
                  csv <<  [bestthesisaward.id, bestthesisaward.candidate_csi_membership_no ,
                  bestthesisaward.valid_till , bestthesisaward.name_of_nominating_institution ,
                  bestthesisaward.address , bestthesisaward.recognized_by , bestthesisaward.reference_number_of_recognition ,
                  bestthesisaward.date_of_recognition , bestthesisaward.name_of_nominator , bestthesisaward.designation_of_nominator ,
                  bestthesisaward.nominator_email , bestthesisaward.nominator_phone  ,
                  bestthesisaward.name_of_candidate ,bestthesisaward.candidate_email , 
                  bestthesisaward.candidate_phone , bestthesisaward.thesis_title , bestthesisaward.defence_of_dissertation_date ,
                  bestthesisaward.user_id ,
                  
                  recordforthesisaward.id,
                  recordforthesisaward.conference_or_journal, recordforthesisaward.name,
                  recordforthesisaward.date ,recordforthesisaward.citation ,
                  recordforthesisaward.bestthesisaward_id ]
               end
      end
    end
    
    
    end 
end
