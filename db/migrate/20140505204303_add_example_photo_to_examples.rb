class AddExamplePhotoToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :example_photo, :string
  end
end
