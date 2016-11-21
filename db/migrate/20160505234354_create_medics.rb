class CreateMedics < ActiveRecord::Migration
  def change
    create_table :medics do |t|
		t.belongs_to :user, index: true
		t.string :crm
    t.string :workHours
		t.string :workDays
		t.text   :expertise


      t.timestamps null: false
    end
  end
end
