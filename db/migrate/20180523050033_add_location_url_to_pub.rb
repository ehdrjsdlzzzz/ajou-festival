class AddLocationUrlToPub < ActiveRecord::Migration[5.0]
  def change
    add_column :pubs, :location_url, :string
  end
end
