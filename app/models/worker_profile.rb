class WorkerProfile < ActiveRecord::Base
  has_one :user, as: :profile, dependent: :destroy
  accepts_nested_attributes_for :user

  has_many :requests, inverse_of: :worker_profile

end
