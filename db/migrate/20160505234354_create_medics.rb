class CreateMedics < ActiveRecord::Migration
  def change
    create_table :medics do |t|
		t.belongs_to :user, index: true
		t.string :crm
		t.string :emailM
		t.string :emailM
		t.text   :dadosM
		t.string :cpfM
		t.string :ddnM
		t.string :telM
		t.string :endM
		t.string :brM
		t.string :cepM
		t.string :cidM
		t.string :estM
		t.string :diasM
		t.string :horasM
	  
      t.timestamps null: false
    end
  end
end
