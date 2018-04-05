class Court < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "OwnersEstablishment"

  # Indirect associations

  # Validations

end
