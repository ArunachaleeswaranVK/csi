class NewsletterawardsController < ApplicationController
     before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
   
    
    def index
        @newsletterawards = Newsletteraward.all
    end
    
    def show
        
    end    
    
    def new
        @newsletteraward = Newsletteraward.new
        1.times { @newsletteraward.detailsfornewsletterawards.build}
     
       
    end
    
    def create
        @newsletteraward = Newsletteraward.new(newsletteraward_params)
        
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
    
end
