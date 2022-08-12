class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :reciever_id
      t.integer :sender_id
      t.integer :listing_id
      t.text :text_message

      t.timestamps
    end
  end
end
