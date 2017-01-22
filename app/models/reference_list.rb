class ReferenceList < ActiveRecord::Base
  belongs_to :reference, inverse_of: :reference_lists

  has_many   :states, :class_name => 'Request', :foreign_key => 'state_id'

end
