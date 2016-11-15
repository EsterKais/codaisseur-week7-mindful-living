class CoursePhoto < ApplicationRecord
# ASSOCIATIONS
belongs_to :course

# CARRIERWAVE/CLOUDINARY
mount_uploader :course_image, ImageUploader

end
