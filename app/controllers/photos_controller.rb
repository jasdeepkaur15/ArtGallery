class PhotosController < ApplicationController
	def index
		@collection = Collection.find(params[:collection_id])
		@photos = @collection.photos
		respond_to do |format|
	      format.html
	      format.json
	    end

	end

	def new
		@photo = Photo.new
	end
	def create
		@collection = Collection.find(params[:collection_id])
		@photo = @collection.photos.create(permit_params)
		if @photo.save
			redirect_to @collection.profile
		else
			redirect_to @photo
		end
	end
	def show
		@photo = Photo.find(params[:id])
	end
private
	def permit_params
		params.require(:photo).permit(:avatar, :name)
	end
end
