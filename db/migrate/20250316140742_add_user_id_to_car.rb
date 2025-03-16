class AddUserIdToCar < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :user_id, :string
  end
end
