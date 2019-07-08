class Photo < ApplicationRecord
	belongs_to :collection
	mount_uploader :avatar, AvatarUploader

end
