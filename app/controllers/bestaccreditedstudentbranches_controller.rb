class BestaccreditedstudentbranchesController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    before_action :authenticate , only: [:new] 
    
    # before_action :authenticate_user!, except: [:index,:show]
   
  
    def getname
        
        @bestaccreditedstudentbranch = Institute.where("name like ?", "#{params[:name]}").first
    end
    
    def index
        @bestaccreditedstudentbranches = Bestaccreditedstudentbranch.all
    end
    
    def show
        
    end    
    
    def new
        @bestaccreditedstudentbranch = current_user.build_bestaccreditedstudentbranch
        
    end
    
    def create
        @bestaccreditedstudentbranch = current_user.build_bestaccreditedstudentbranch(bestaccreditedstudentbranch_params)
        
        if @bestaccreditedstudentbranch.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @bestaccreditedstudentbranch.update(bestaccreditedstudentbranch_params)
            redirect_to @bestaccreditedstudentbranch
        else
            render "edit"
        end    
    end
    
    def destroy
        @bestaccreditedstudentbranch.destroy
        redirect_to bestcsiinternationalstudentseventhostes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def bestaccreditedstudentbranch_params
       params.require(:bestaccreditedstudentbranch).permit(
            :program_organised_expert_lecture_no_of_activities,
            :program_organised_seminars_workshops_no_of_activities,
            :program_organised_short_term_training_program_no_of_activities,
            :program_organised_symposium_no_of_activities,
            :program_organised_motivational_talks_no_of_activities,
            :student_branch_membership_institution_category,
            :student_branch_membership_no_of_volunteers,
            :volunteers_added,
            :number_of_contests_organised_for_students,
            :convention_seminar_type,
            :convention_seminar_no_of_events_organised,
            :student_branch_website_url,
            :newsletter_type,
            :no_of_issues_published_in_newsletter,
            :no_of_faculty_as_csi_members_institution_category,
            :no_of_faculty_as_csi_members_life,
            :no_of_faculty_as_csi_members_annual,
            :managing_committee_elected,
            :imno)
    end
    
    def set_award
       @bestaccreditedstudentbranch = Bestaccreditedstudentbranch.find(params[:id])
    end
end
