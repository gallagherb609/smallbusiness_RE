# Base Rails

## Standard Workflow

 1. Start the web server by running `bin/server`.
 1. Navigate to your live application.
 1. As you work, remember to navigate to `/git` and **commit often as you work.**

rails generate draft:account user

rails generate draft:resource listing owner_name:string status:string post_date:datetime sq_ft:integer image:string owner_id:integer asking_price:integer city:string category_id:integer auction_close:datetime map_location:integer

rails generate draft:resource message reciever_id:integer sender_id:integer listing_id:integer text_message:text

rails generate draft:resource bid listing_id:integer user_id:integer bid_amount:integer

rails generate draft:resource category category_name:string


the_listing.map_location = params.fetch("query_map_location")
