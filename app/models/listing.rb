# == Schema Information
#
# Table name: listings
#
#  id            :integer          not null, primary key
#  asking_price  :integer
#  auction_close :datetime
#  city          :string
#  image         :string
#  map_location  :string
#  owner_name    :string
#  post_date     :datetime
#  sq_ft         :integer
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :string
#  owner_id      :integer
#
class Listing < ApplicationRecord
  belongs_to :user

  has_many :bids

  validates(:owner_name, { :presence => true })
  validates(:status, { :presence => true })
  validates(:sq_ft, { :presence => true })
  validates(:auction_close, { :presence => true })
  validates(:asking_price, { :presence => true })

  #mount_uploader :image_box, image_boxUploader
end
