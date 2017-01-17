class Request < ActiveRecord::Base
  belongs_to :customer_profile
  belongs_to :worker_profile
end
