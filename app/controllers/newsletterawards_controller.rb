class NewsletterawardsController < ApplicationController
    
    before_action :authenticate , only: [:new] 
    before_action :limit_award, only: [:new, :create]  
     before_action :set_award , only: [:edit,:update,:show,:destroy]
   
    # before_action :authenticate_user!, except: [:index,:show]
   
    
    def index
        @newsletterawards = Newsletteraward.all
        respond_to do |format|
            format.html
            format.csv { send_data @newsletterawards.to_csv, 
            filename: "newsletterawards-#{Date.today}.csv" }
        end
    end
    
    def show
        
    end    
    
    def new
        @newsletteraward = current_user.build_newsletteraward
        1.times { @newsletteraward.detailsfornewsletterawards.build}
     
       
    end
    
    def create
        @newsletteraward = current_user.build_newsletteraward(newsletteraward_params)
        
        if @newsletteraward.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @newsletteraward.update(newsletteraward_params)
            redirect_to @newsletteraward
        else
            render "edit"
        end    
    end
    
    def destroy
        @newsletteraward.destroy
        redirect_to newsletterawardes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def newsletteraward_params
       params.require(:newsletteraward).permit(
       :region,:chapter,:address,
       :phone,:email,:other_info,
       
       detailsfornewsletterawards_attributes: [:date_of_publication,
       :title,:remarks,:_destroy],
       )
    end
    
    def set_award
       @newsletteraward = Newsletteraward.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.newsletteraward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
    
end
