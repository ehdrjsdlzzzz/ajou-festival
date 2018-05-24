class AddPriceUrlToPub < ActiveRecord::Migration[5.0]
  def change
    add_column :pubs, :price_url, :string
  end
end
