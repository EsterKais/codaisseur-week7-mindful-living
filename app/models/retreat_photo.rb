class RetreatPhoto < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :retreat

  # CARRIERWAVE/CLOUDINARY
  mount_uploader :retreat_image, ImageUploader
end
