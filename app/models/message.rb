# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  text_message :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  listing_id   :integer
#  reciever_id  :integer
#  sender_id    :integer
#
class Message < ApplicationRecord
end
