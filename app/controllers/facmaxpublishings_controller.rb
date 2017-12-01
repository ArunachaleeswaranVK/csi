class FacmaxpublishingsController < ApplicationController
    
    before_action :authenticate , only: [:new] 
    before_action :limit_award, only: [:new, :create]   
    before_action :set_award , only: [:edit,:update,:show,:destroy]
   
    # before_action :authenticate_user!, except: [:index,:show]
    
    
    
    def index
        @facmaxpublishings = Facmaxpublishing.all
        respond_to do |format|
            format.html
            format.csv { send_data @facmaxpublishings.to_csv, 
            filename: "facmaxpublishings-#{Date.today}.csv" }
        end
    end
    
    def show
        
    end    
    
    def new
        @facmaxpublishing = current_user.build_facmaxpublishing
        2.times { @facmaxpublishing.publishingdetailbyfaculties.build}
    end
    
    def create
        @facmaxpublishing = current_user.build_facmaxpublishing(facmaxpublishing_params)
        
        if @facmaxpublishing.save
            flash[:notice] = " Your response has been recorded"
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @facmaxpublishing.update(facmaxpublishing_params)
            redirect_to @facmaxpublishing
        else
            render "edit"
        end    
    end
    
    def destroy
        @facmaxpublishing.destroy
        redirect_to facmaxpublishinges_path
    end
    
    private
    
    def authenticate
       authenticate_user! && is_sbc? 
    end
    
    def facmaxpublishing_params
       params.require(:facmaxpublishing).permit(:candidate_csi_membership_no,
       :valid_till,:has_student_branch,:faculty_name,:faculty_email,:attachment,
       publishingdetailbyfaculties_attributes: [:article_title,
       :published_in,:date_of_publishing,:_destroy])
    end
    
    def set_award
       @facmaxpublishing = Facmaxpublishing.find(params[:id])
    end
    
    def limit_award
      user_award = current_user.facmaxpublishingaward_review(@bestaccreditedstudentbranch)

      if user_award
        redirect_to root_path
        flash[:notice] = " You can submit only one award"
      end 
    end
end
