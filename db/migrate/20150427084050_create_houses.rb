class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    	t.string		:name, :null => false
    	t.references 	:slum
      	t.timestamps
    end
    add_index :houses, :name
    add_index :houses, :slum_id
  end

  def down
  	drop_index :houses, :name
  	drop_index :houses, :slum_id
  	drop_table :houses
  end
end
