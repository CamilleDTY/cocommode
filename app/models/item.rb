class Item < ApplicationRecord
  mount_uploader :main_picture, PhotoUploader
  mount_uploader :second_picture, PhotoUploader
  mount_uploader :third_picture, PhotoUploader
end
