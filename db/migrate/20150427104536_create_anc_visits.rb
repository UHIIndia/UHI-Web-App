class CreateAncVisits < ActiveRecord::Migration
  def change
    create_table :anc_visits do |t|
    	t.references :woman
    	t.integer 	:month_id, :null => false
    	t.datetime	:asha_visit_date
    	t.datetime	:anm_visit_date
    	t.integer	:weight
    	t.integer	:tt
    	t.integer	:hb
    	t.boolean	:pale_eye, :default => false
    	t.boolean	:night_blindness, :default => false
    	t.boolean	:bleeding, :default => false
    	t.boolean	:malaria, :default => false
    	t.integer	:ifa_tablets
    	t.string	:bp
    	t.boolean	:urine_protien, :default => false
    	t.boolean 	:swelling, :default => false
    	t.boolean	:headache, :default => false
    	t.boolean	:urine_sugar, :default => false
    	t.boolean	:fever, :default => false
    	t.boolean	:foul_smelling, :default => false
    	t.boolean	:other_infections, :default => false
      	t.timestamps
    end
    add_index :anc_visits, :month_id
    add_index :anc_visits, :woman_id
  end

  def down
  	drop_index :anc_visits, :month_id
    drop_index :anc_visits, :woman_id
  	drop_table :anc_visits
  end
end
