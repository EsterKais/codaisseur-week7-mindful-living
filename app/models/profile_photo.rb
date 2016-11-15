class ProfilePhoto < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :profile

  # CARRIERWAVE/CLOUDINARY
  mount_uploader :profile_image, ImageUploader
end
