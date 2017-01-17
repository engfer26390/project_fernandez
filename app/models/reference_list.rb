class ReferenceList < ActiveRecord::Base
  belongs_to :reference, inverse_of: :reference_lists
end
