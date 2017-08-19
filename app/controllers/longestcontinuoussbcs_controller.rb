class LongestcontinuoussbcsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
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
        @longestcontinuoussbc = Longestcontinuoussbc.new
    end
    
    def create
        @longestcontinuoussbc = Longestcontinuoussbc.new(longestcontinuoussbc_params)
        
        if @longestcontinuoussbc.save
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
    
    def longestcontinuoussbc_params
       params.require(:longestcontinuoussbc).permit(:volunteers,:volunteers_added,:imno)
    end
    
    def set_award
       @longestcontinuoussbc = Longestcontinuoussbc.find(params[:id])
    end
end
