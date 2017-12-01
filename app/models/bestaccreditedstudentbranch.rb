class Bestaccreditedstudentbranch < ActiveRecord::Base
    belongs_to :institute, foreign_key: "imno"
    belongs_to :user
    
    def self.to_csv
    attributes = %w{id program_organised_expert_lecture_no_of_activities program_organised_seminars_workshops_no_of_activities
        program_organised_short_term_training_program_no_of_activities program_organised_symposium_no_of_activities
        program_organised_motivational_talks_no_of_activities student_branch_membership_institution_category
        student_branch_membership_no_of_volunteers number_of_contests_organised_for_students convention_seminar_type
        convention_seminar_no_of_events_organised student_branch_website_url newsletter_type no_of_issues_published_in_newsletter
        no_of_faculty_as_csi_members_institution_category no_of_faculty_as_csi_members_life no_of_faculty_as_csi_members_annual
        managing_committee_elected imno user_id
    }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |bestaccreditedstudentbranch|
        csv << attributes.map{ |attr| bestaccreditedstudentbranch.send(attr) }
      end
    end
    end
    
   
end