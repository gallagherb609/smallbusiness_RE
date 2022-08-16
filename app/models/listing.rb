# == Schema Information
#
# Table name: listings
#
#  id            :integer          not null, primary key
#  asking_price  :integer
#  auction_close :datetime
#  city          :string
#  image         :string
#  map_location  :integer
#  owner_name    :string
#  post_date     :datetime
#  sq_ft         :integer
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :integer
#  owner_id      :integer
#
class Listing < ApplicationRecord
  belongs_to :user
end
