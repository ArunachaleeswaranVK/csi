class RegionalchapterawardsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
   
    
    def index
        @regionalchapterawards = Regionalchapteraward.all
    end
    
    def show
        
    end    
    
    def new
        @regionalchapteraward = Regionalchapteraward.new
        1.times { @regionalchapteraward.techactivitiesregionalchapterawards.build}
        1.times { @regionalchapteraward.eventsforregionalchapterawards.build}
        1.times { @regionalchapteraward.newslettersforregionalchapterawards.build}
    end
    
    def create
        @regionalchapteraward = Regionalchapteraward.new(regionalchapteraward_params)
        
        if @regionalchapteraward.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @regionalchapteraward.update(regionalchapteraward_params)
            redirect_to @regionalchapteraward
        else
            render "edit"
        end    
    end
    
    def destroy
        @regionalchapteraward.destroy
        redirect_to regionalchapterawardes_path
    end
    
    private
    
    def regionalchapteraward_params
       params.require(:regionalchapteraward).permit(:category,
       :region,:chapter,:address,
       :phone,:email,:members_number_till_previous_year,
       :members_percentage_till_previous_year,
       :members_number_till_current_year,
       :members_percentage_till_current_year,       
       :student_branch_number_previous_year,
       :student_branch_number_current_year,
       :details_deputed_memeber,
       :other_info,
       
       techactivitiesregionalchapterawards_attributes: [:activity_name,
       :remarks,:_destroy],
       
       eventsforregionalchapterawards_attributes: [:activity_name,
       :remarks,:_destroy],
       
       newslettersforregionalchapterawards_attributes: [:date_of_publication,
       :title_theme,:_destroy])
    end
    
    def set_award
       @regionalchapteraward = Regionalchapteraward.find(params[:id])
    end
end