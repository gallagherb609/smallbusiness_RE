class ListingsController < ApplicationController
  def index
    matching_listings = Listing.all

    @list_of_listings = matching_listings.order({ :created_at => :desc })

    render({ :template => "listings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_listings = Listing.where({ :id => the_id })

    @the_listing = matching_listings.at(0)

    render({ :template => "listings/show.html.erb" })
  end

  def create
    the_listing = Listing.new
    the_listing.owner_name = params.fetch("query_owner_name")
    the_listing.status = params.fetch("query_status")
    the_listing.post_date = params.fetch("query_post_date")
    the_listing.sq_ft = params.fetch("query_sq_ft")
    the_listing.image = params.fetch("query_image")
    the_listing.owner_id = params.fetch("query_owner_id")
    the_listing.asking_price = params.fetch("query_asking_price")
    the_listing.city = params.fetch("query_city")
    the_listing.category_id = params.fetch("query_category_id")
    the_listing.auction_close = params.fetch("query_auction_close")
    the_listing.map_location = params.fetch("query_map_location")

    if the_listing.valid?
      the_listing.save
      redirect_to("/listings", { :notice => "Listing created successfully." })
    else
      redirect_to("/listings", { :alert => the_listing.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_listing = Listing.where({ :id => the_id }).at(0)

    the_listing.owner_name = params.fetch("query_owner_name")
    the_listing.status = params.fetch("query_status")
    the_listing.post_date = params.fetch("query_post_date")
    the_listing.sq_ft = params.fetch("query_sq_ft")
    the_listing.image = params.fetch("query_image")
    the_listing.owner_id = params.fetch("query_owner_id")
    the_listing.asking_price = params.fetch("query_asking_price")
    the_listing.city = params.fetch("query_city")
    the_listing.category_id = params.fetch("query_category_id")
    the_listing.auction_close = params.fetch("query_auction_close")
    the_listing.map_location = params.fetch("query_map_location")

    if the_listing.valid?
      the_listing.save
      redirect_to("/listings/#{the_listing.id}", { :notice => "Listing updated successfully."} )
    else
      redirect_to("/listings/#{the_listing.id}", { :alert => the_listing.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_listing = Listing.where({ :id => the_id }).at(0)

    the_listing.destroy

    redirect_to("/listings", { :notice => "Listing deleted successfully."} )
  end
end
