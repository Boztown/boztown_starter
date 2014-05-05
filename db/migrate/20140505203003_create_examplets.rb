class CreateExamplets < ActiveRecord::Migration
  def change
    create_table :examplets do |t|
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
