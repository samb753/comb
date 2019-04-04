class Phrase < ApplicationRecord
  belongs_to :user
  before_save :downcase_phrase

  def downcase_phrase
    first_word.downcase!
    second_word.downcase!
  end
end
