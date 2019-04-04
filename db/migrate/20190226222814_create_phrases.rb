class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_word
      t.string :second_word

      t.timestamps
    end
  end
end
