class AddUserIdToSeeds < ActiveRecord::Migration[5.0]
  def change
    add_column :seeds, :user_id, :integer
  end
end
