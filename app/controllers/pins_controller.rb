class PinsController < ApplicationController
load_and_authorize_resource :only => [:index, :show]
	
	def index
	end
	
end
