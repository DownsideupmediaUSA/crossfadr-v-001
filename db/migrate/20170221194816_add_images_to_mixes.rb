class AddImagesToMixes < ActiveRecord::Migration[5.0]
  def up
    change_table :mixes do |t|
      t.attachment :image
    end
  end

  def down
    remove_attachment :mixes, :image
  end
end
