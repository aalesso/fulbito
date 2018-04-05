class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :owners_establishments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
