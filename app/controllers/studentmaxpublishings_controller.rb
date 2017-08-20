class StudentmaxpublishingsController < ApplicationController
    before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @studentmaxpublishing = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @studentmaxpublishings = Studentmaxpublishing.all
    end
    
    def show
        
    end    
    
    def new
        @studentmaxpublishing = Studentmaxpublishing.new
    end
    
    def create
        @studentmaxpublishing = Studentmaxpublishing.new(studentmaxpublishing_params)
        
        if @studentmaxpublishing.save
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @studentmaxpublishing.update(studentmaxpublishing_params)
            redirect_to @studentmaxpublishing
        else
            render "edit"
        end    
    end
    
    def destroy
        @studentmaxpublishing.destroy
        redirect_to studentmaxpublishinges_path
    end
    
    private
    
    def studentmaxpublishing_params
       params.require(:studentmaxpublishing).permit(:csi_volunteer_name,:csi_volunteer_email,:csi_volunteer_id,:valid_till,:imno)
    end
    
    def set_award
       @studentmaxpublishing = Studentmaxpublishing.find(params[:id])
    end
end
