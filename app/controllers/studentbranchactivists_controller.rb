class StudentbranchactivistsController < ApplicationController
    
    before_action :authenticate , only: [:new] 
     
     before_action :set_award , only: [:edit,:update,:show,:destroy]
   
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @studentbranchactivist = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @studentbranchactivists = Studentbranchactivist.all
    end
    
    def show
        
    end    
    
    def new
        @studentbranchactivist = current_user.studentbranchactivists.build
        2.times { @studentbranchactivist.eventdetailsbystudentactivists.build}
    end
    
    def create
        @studentbranchactivist = current_user.studentbranchactivists.build(studentbranchactivist_params)
        
        if @studentbranchactivist.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @studentbranchactivist.update(studentbranchactivist_params)
            redirect_to @studentbranchactivist
        else
            render "edit"
        end    
    end
    
    def destroy
        @studentbranchactivist.destroy
        redirect_to studentbranchactivistes_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def studentbranchactivist_params
       params.require(:studentbranchactivist).permit(:csi_volunteer_name,:csi_volunteer_email,:csi_volunteer_id,
       :volunteers_added,:valid_till,:imno,:attachment,
       eventdetailsbystudentactivists_attributes: [:event_name,
       :event_place,:role_played,:_destroy])
    end
    
    def set_award
       @studentbranchactivist = Studentbranchactivist.find(params[:id])
    end
    
    
end
