class HighestsponsorshipofcsieventsController < ApplicationController
  
  before_action :set_award , only: [:edit,:update,:show,:destroy]
    # before_action :authenticate_user!, except: [:index,:show]
    
    def getname
        @name = params[:name]
        @highestsponsorshipofcsievent = Institute.where("name like ?", "%#{@name}%").first
    end
    
    def index
        @highestsponsorshipofcsievents = Highestsponsorshipofcsievent.all
    end
    
    def show
        
    end    
    
    def new
        @highestsponsorshipofcsievent = Highestsponsorshipofcsievent.new
    end
    
    def create
        @highestsponsorshipofcsievent = Highestsponsorshipofcsievent.new(highestsponsorshipofcsievent_params)
        
        if @highestsponsorshipofcsievent.save
            redirect_to root_path
        else
            render "new"
        end    
    end
    
    def edit
        
        
    end
    
    def update
        if @highestsponsorshipofcsievent.update(highestsponsorshipofcsievent_params)
            redirect_to @highestsponsorshipofcsievent
        else
            render "edit"
        end    
    end
    
    def destroy
        @highestsponsorshipofcsievent.destroy
        redirect_to highestsponsorshipofcsieventes_path
    end
    
    private
    
    def highestsponsorshipofcsievent_params
       params.require(:highestsponsorshipofcsievent).permit(:volunteers,:volunteers_added,:imno)
    end
    
    def set_award
       @highestsponsorshipofcsievent = Highestsponsorshipofcsievent.find(params[:id])
    end
end
