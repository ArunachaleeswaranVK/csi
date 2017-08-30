class AddDetailsToBestaccreditedstudentbranches < ActiveRecord::Migration
  def change
    
    add_column :bestaccreditedstudentbranches, :program_organised_expert_lecture_no_of_activities, :integer
    add_column :bestaccreditedstudentbranches, :program_organised_seminars_workshops_no_of_activities, :integer
    add_column :bestaccreditedstudentbranches, :program_organised_short_term_training_program_no_of_activities, :integer
    add_column :bestaccreditedstudentbranches, :program_organised_symposium_no_of_activities, :integer
    add_column :bestaccreditedstudentbranches, :program_organised_motivational_talks_no_of_activities, :integer
    
    add_column :bestaccreditedstudentbranches, :student_branch_membership_institution_category, :string
    add_column :bestaccreditedstudentbranches, :student_branch_membership_no_of_volunteers, :integer
    
    add_column :bestaccreditedstudentbranches, :type_of_contests_organised_for_students, :string
    add_column :bestaccreditedstudentbranches, :number_of_contests_organised_for_students, :integer
    
    add_column :bestaccreditedstudentbranches, :convention_seminar_type, :string
    add_column :bestaccreditedstudentbranches, :convention_seminar_no_of_events_organised, :integer
    
    add_column :bestaccreditedstudentbranches, :student_branch_website_url, :string
    
    add_column :bestaccreditedstudentbranches, :newsletter_type, :string
    add_column :bestaccreditedstudentbranches, :no_of_issues_published_in_newsletter, :integer
    
    add_column :bestaccreditedstudentbranches, :no_of_faculty_as_csi_members_institution_category, :string
    add_column :bestaccreditedstudentbranches, :no_of_faculty_as_csi_members_life, :integer
    add_column :bestaccreditedstudentbranches, :no_of_faculty_as_csi_members_annual, :integer
    
    add_column :bestaccreditedstudentbranches, :managing_committee_elected, :boolean
    
    add_column :bestaccreditedstudentbranches, :imno, :string
    add_index :bestaccreditedstudentbranches, :imno
  end
end
