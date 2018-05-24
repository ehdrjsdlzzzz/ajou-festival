class AddImageUrlToPub < ActiveRecord::Migration[5.0]
  def change
    add_column :pubs, :image_url, :string
  end
end
