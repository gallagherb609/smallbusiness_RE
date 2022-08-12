class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :owner_name
      t.string :status
      t.datetime :post_date
      t.integer :sq_ft
      t.image_upload :images
      t.integer :owner_id
      t.integer :asking_price
      t.string :city
      t.integer :category_id
      t.datetime :auction_close
      t.mappable_address :map_location

      t.timestamps
    end
  end
end
