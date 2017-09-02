class BestthesisawardsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    before_action :authenticate , only: [:new]
    # before_action :authenticate_user!, except: [:index,:show]
   
    
    
    
    def index
        @bestthesisawards = Bestthesisaward.all
    end
    
    def show
        
    end    
    
    def new
        @bestthesisaward = current_user.build_bestthesisaward
        2.times { @bestthesisaward.recordforthesisawards.build}
    end
    
    def create
        @bestthesisaward = current_user.build_bestthesisaward(bestthesisaward_params)
        
        if @bestthesisaward.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @bestthesisaward.update(bestthesisaward_params)
            redirect_to @bestthesisaward
        else
            render "edit"
        end    
    end
    
    def destroy
        @bestthesisaward.destroy
        redirect_to bestthesisawardes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def bestthesisaward_params
       params.require(:bestthesisaward).permit(:candidate_csi_membership_no,
       :valid_till,
       :name_of_nominating_institution,
       :address,
       :recognized_by,
       :reference_number_of_recognition,
       :date_of_recognition,
       :name_of_nominator,
       :designation,
       :nominator_email,
       :nominator_phone,
       :name_of_candidate,
       :candidate_email,
       :candidate_phone,
       :thesis_title,
       :defence_of_dissertation_date,
       
       recordforthesisawards_attributes: [:conference_or_journal,:name,
       :date,:citation,:_destroy])
    end
    
    def set_award
       @bestthesisaward = Bestthesisaward.find(params[:id])
    end
end
