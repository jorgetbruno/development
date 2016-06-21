class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
