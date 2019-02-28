class Phrase < ApplicationRecord
  belongs_to :user, optional: true
end
