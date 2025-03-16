class CreateMakes < ActiveRecord::Migration[8.0]
  def change
    create_table :makes do |t|
      t.string :company
      t.string :region

      t.timestamps
    end
  end
end
