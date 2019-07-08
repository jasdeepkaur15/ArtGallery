class Collection < ApplicationRecord
	belongs_to :profile
	has_many :photos
	mount_uploader :pro_pic, ProPicUploader
end
