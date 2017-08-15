class BestcsiinternationalstudentseventhostsController < ApplicationController
   
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
    
    
    def index
        @bestcsiinternationalstudentseventhosts = Bestcsiinternationalstudentseventhost.all
    end
    
    def show
        
    end    
    
    def new
        @bestcsiinternationalstudentseventhost = Bestcsiinternationalstudentseventhost.new
    end
    
    def create
        @bestcsiinternationalstudentseventhost = Bestcsiinternationalstudentseventhost.new(bestcsiinternationalstudentseventhost_params)
        
        if @bestcsiinternationalstudentseventhost.save
            redirect_to @bestcsiinternationalstudentseventhost
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @bestcsiinternationalstudentseventhost.update(bestcsiinternationalstudentseventhost_params)
            redirect_to @bestcsiinternationalstudentseventhost
        else
            render "edit"
        end    
    end
    
    def destroy
        @bestcsiinternationalstudentseventhost.destroy
        redirect_to bestcsiinternationalstudentseventhostes_path
    end
    
    private
    
    def bestcsiinternationalstudentseventhost_params
       params.require(:bestcsiinternationalstudentseventhost).permit(:volunteers,:volunteers_added,:imno)
    end
    
    def set_award
       @bestcsiinternationalstudentseventhost = Bestcsiinternationalstudentseventhost.find(params[:id])
    end
end
