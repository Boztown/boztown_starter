class AddFieldsToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :name, :string
  end
end
