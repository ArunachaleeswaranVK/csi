class StudentmaxpublishingsController < ApplicationController
    before_action :authenticate , only: [:new] 
    before_action :limit_award, only: [:new, :create]   
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
        @studentmaxpublishing = current_user.build_studentmaxpublishing
        2.times { @studentmaxpublishing.publishingdetailbystudents.build}
    end
    
    def create
        @studentmaxpublishing = current_user.build_studentmaxpublishing(studentmaxpublishing_params)
        
        if @studentmaxpublishing.save
            flash[:notice] = " Your response has been recorded"
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
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def studentmaxpublishing_params
       params.require(:studentmaxpublishing).permit(:csi_volunteer_name,
       :csi_volunteer_email,:csi_volunteer_id,:valid_till,:imno,:attachment,
       publishingdetailbystudents_attributes: [:no_of_articles_published,:article_title,
       :published_in,:date_of_publishing,:_destroy])
    end
    
    def set_award
       @studentmaxpublishing = Studentmaxpublishing.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.studentmaxpublishingaward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
end
