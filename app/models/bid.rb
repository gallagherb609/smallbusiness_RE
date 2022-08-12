# == Schema Information
#
# Table name: bids
#
#  id         :integer          not null, primary key
#  bid_amount :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  listing_id :integer
#  user_id    :integer
#
class Bid < ApplicationRecord
end
