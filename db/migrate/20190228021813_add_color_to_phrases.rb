class AddColorToPhrases < ActiveRecord::Migration[5.2]
  def change
    add_column :phrases, :color, :string
  end
end
