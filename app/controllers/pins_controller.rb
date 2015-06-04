class PinsController < ApplicationController

skip_before_filter(:require_login, {:only => :index})

def index
    @pin = Pin.all
    @pin =Pin.new

load_and_authorize_resource :only => [:index, :show]
	
	def index
	end

end

def show
    @pin =Pin.find
end

def create
    @pin =Pin.new(description_params)
    
    @pin.user_id = current_user.id
    if@pin.save
redirect_to(pin_path,{alert: 'Connection added'})
else
    render 'pins_path',alert: 'There was an error!'
end
end


def edit

@pin =Pin.find(params[:id])
if @pin.update_attributes(description_params)
else 
render :edit 
end
end


def destroy
    @pin =Pin.find(params[:id])
    @pin.destroy
    redirect_to home_url
end


private
def description_params
    params.require(:pin).permit(:description, :lat, :lng)
end