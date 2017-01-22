class AddUserIdToLikedMixes < ActiveRecord::Migration[5.0]
  def change
    add_column :liked_mixes, :user_id, :integer
  end
end
