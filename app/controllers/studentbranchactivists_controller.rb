class StudentbranchactivistsController < ApplicationController
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
        @studentbranchactivist = Studentbranchactivist.new
    end
    
    def create
        @studentbranchactivist = Studentbranchactivist.new(studentbranchactivist_params)
        
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
    
    def studentbranchactivist_params
       params.require(:studentbranchactivist).permit(:csi_volunteer_name,:csi_volunteer_email,:csi_volunteer_id,
       :volunteers,:volunteers_added,:valid_till,:imno)
    end
    
    def set_award
       @studentbranchactivist = Studentbranchactivist.find(params[:id])
    end
end
