class DisasterPicture < ApplicationRecord
    mount_base64_uploader :image, ImageUploader
    belongs_to :accident_point
end
