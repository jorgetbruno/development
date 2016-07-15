class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.belongs_to :user, index: true

      t.string  :motherName       , null: false
      t.string  :fatherName
      t.text    :occupation
      t.text    :observation


      t.timestamps null: false
    end
  end
end
