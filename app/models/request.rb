class Request < ActiveRecord::Base
  belongs_to :customer_profile, inverse_of: :requests
  belongs_to :worker_profile, inverse_of: :requests
end
