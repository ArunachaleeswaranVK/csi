class LongestcontinuoussbcsController < ApplicationController
    
    before_action :limit_award, only: [:new, :create]   
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
       params.require(:longestcontinuoussbc).permit(:volunteers_added,:last_but_before_year_vol_strength,:attachment,
       :last_year_vol_strength,:current_year_vol_strength,:imno)
    end
    
    def set_award
       @longestcontinuoussbc = Longestcontinuoussbc.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.longestcontinuoussbcaward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
end
