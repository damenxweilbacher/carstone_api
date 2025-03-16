class AddMakeIdToCars < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :make_id, :string
  end
end
