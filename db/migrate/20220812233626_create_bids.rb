class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :listing_id
      t.integer :user_id
      t.integer :bid_amount

      t.timestamps
    end
  end
end
