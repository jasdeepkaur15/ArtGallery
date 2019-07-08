class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all
	end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.create(permitted_params)
		if @profile.save
			redirect_to profiles_path
		else
			redirect_to @profile
		end
	end
	def destroy
		@profile = Profile.destroy(params[:id])
		redirect_to @profile
	end
	def show
		@profile = Profile.find(params[:id])
	end
private
	def permitted_params
		params.require(:profile).permit(:name, :description)
	end
end
