class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :first_word
      t.string :second_word
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
