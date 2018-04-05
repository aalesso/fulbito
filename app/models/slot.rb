class Slot < ApplicationRecord
  # Direct associations

  belongs_to :courts,
             :class_name => "Court",
             :counter_cache => true

  # Indirect associations

  # Validations

end
