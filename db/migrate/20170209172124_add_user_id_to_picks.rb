class AddUserIdToPicks < ActiveRecord::Migration[5.0]
  def change
    add_column :picks, :user_id, :integer
  end
end
