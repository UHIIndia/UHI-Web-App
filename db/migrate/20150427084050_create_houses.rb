class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    	t.string		:name, :null => false
    	t.references 	:slum
      	t.timestamps
    end
    add_index :houses, :name
  end

  def down
  	drop_index :houses, :name
  	drop_table :houses
  end
end
