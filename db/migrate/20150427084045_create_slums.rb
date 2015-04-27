class CreateSlums < ActiveRecord::Migration
  def change
    create_table :slums do |t|
    	t.string		:name, :null => false
    	t.references 	:city
      	t.timestamps
    end
    add_index :slums, :name
    add_index :slums, :city_id
  end

  def down
  	drop_index :slums, :name
  	drop_index :slums, :city_id
  	drop_table :slums
  end
end
