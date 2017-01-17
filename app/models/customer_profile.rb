class CustomerProfile < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy

  has_many :requests, inverse_of: :customer_profile
end
