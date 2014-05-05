class Example < ActiveRecord::Base
  validates :name, presence: true
  mount_uploader :example_photo, ExamplePhotoUploader
end
