class LongestcontinuoussbcsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    before_action :authenticate , only: [:new]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @longestcontinuoussbc = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @longestcontinuoussbcs = Longestcontinuoussbc.all
    end
    
    def show
        
    end    
    
    def new
        @longestcontinuoussbc = current_user.build_longestcontinuoussbc
        2.times { @longestcontinuoussbc.sbc_tenure_details.build}
    end
    
    def create
        @longestcontinuoussbc = current_user.build_longestcontinuoussbc(longestcontinuoussbc_params)
        
        if @longestcontinuoussbc.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @longestcontinuoussbc.update(longestcontinuoussbc_params)
            redirect_to @longestcontinuoussbc
        else
            render "edit"
        end    
    end
    
    def destroy
        @longestcontinuoussbc.destroy
        redirect_to longestcontinuoussbces_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def longestcontinuoussbc_params
       params.require(:longestcontinuoussbc).permit(:volunteers_added,
       :imno,sbc_tenure_details_attributes: [:year,
       :institution_name,:imno_of_institution,:volunteers,:_destroy])
    end
    
    def set_award
       @longestcontinuoussbc = Longestcontinuoussbc.find(params[:id])
    end
end
