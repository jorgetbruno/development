class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
