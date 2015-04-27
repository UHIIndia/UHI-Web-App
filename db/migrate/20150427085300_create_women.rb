class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
    	t.string :name, :null => false
    	t.string :woman_id, :null => false
    	t.references :house
    	t.string :visible_id
    	t.date   :date_of_birth
    	t.integer	:age
    	t.string	:husband_name
    	t.string	:phone
    	t.date      :registration_date
    	t.boolean	:is_pregnant
    	t.boolean	:pregnancy_choice
    	t.integer	:living_children
    	t.integer	:live_births
    	t.boolean	:breast_feeding_status
    	t.string	:maternal_outcome
    	t.string	:birth_outcome
      	t.timestamps
    end
    add_index :women, :name
    add_index :women, :woman_id
    add_index :women, :visible_id
    add_index :women, :phone
    add_index :women, :maternal_outcome
    add_index :women, :birth_outcome
    add_index :women, :house_id
  end

  def down
  	drop_index :women, :name
  	drop_index :women, :woman_id
    drop_index :women, :visible_id
    drop_index :women, :phone
    drop_index :women, :maternal_outcome
    drop_index :women, :birth_outcome
    drop_index :women, :house_id
  	drop_table :women
  end
end
