class CollectionsController < ApplicationController
	def new
		@collection = Collection.new
	end
	def index
		@collections =  Collection.all
	end
	def create
		@profile = Profile.find(params[:profile_id])
		@collection = @profile.collections.create(permit_params)
		if @collection.save
			redirect_to @profile
		else
			redirect_to @collection
		end
	end

	def show
	end
	def destroy
	end
private
	def permit_params
		params.require(:collection).permit(:name, :profile_id, :pro_pic)
	end
end
