class AddStuffToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :example_date, :datetime
    add_column :examples, :price, :decimal, :precision => 8, :scale => 2
    add_column :examples, :examplet_id, :integer
  end
end
