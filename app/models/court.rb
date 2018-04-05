class Court < ApplicationRecord
  # Direct associations

  has_many   :slots,
             :foreign_key => "courts_id",
             :dependent => :destroy

  belongs_to :owner,
             :class_name => "OwnersEstablishment"

  # Indirect associations

  # Validations

end
