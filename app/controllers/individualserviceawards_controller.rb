class IndividualserviceawardsController < ApplicationController
     before_action :set_award , only: [:edit,:update,:show,:destroy]
     before_action :authenticate , only: [:new]
    # before_action :authenticate_user!, except: [:index,:show]
   
    
    def index
        @individualserviceawards = Individualserviceaward.all
    end
    
    def show
        
    end    
    
    def new
        @individualserviceaward = current_user.build_individualserviceaward
        1.times { @individualserviceaward.contributiontocsiindserviceawards.build}
        1.times { @individualserviceaward.roleincsieventindserviceawards.build}
       
    end
    
    def create
        @individualserviceaward = current_user.build_individualserviceaward(individualserviceaward_params)
        
        if @individualserviceaward.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @individualserviceaward.update(individualserviceaward_params)
            redirect_to @individualserviceaward
        else
            render "edit"
        end    
    end
    
    def destroy
        @individualserviceaward.destroy
        redirect_to individualserviceawardes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def individualserviceaward_params
       params.require(:individualserviceaward).permit(:applying_for,
       :region,:chapter,:address,
       :phone,:email,
       :applicant_name,
       :applicant_csi_mem_no,
       :applicant_csi_mem_since,
       :applicant_phone,       
       :applicant_mobile,
       :applicant_email,
       :applicant_dob,
       :applicant_educational_qualification,
       :applicant_experience,
       :membership_in_other_societies,
       :publication_details,
       :other_info,
       :role_in_csi_membership_promotion_in_chapter,
       
       roleincsieventindserviceawards_attributes: [:date_of_event,
       :name_of_event,:type_of_event,:surplus_amount,:role,:no_of_paper_received,:_destroy],
       
       contributiontocsiindserviceawards_attributes: [:year,
       :name_of_position,:achievement,:_destroy],
       
       )
    end
    
    def set_award
       @individualserviceaward = Individualserviceaward.find(params[:id])
    end
    
end
