class AddCorenToNurses < ActiveRecord::Migration
  def change
    add_column :nurses, :coren, :string
  end
end
