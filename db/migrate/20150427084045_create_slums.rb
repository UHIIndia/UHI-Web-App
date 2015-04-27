class CreateSlums < ActiveRecord::Migration
  def change
    create_table :slums do |t|
    	t.string		:name, :null => false
    	t.references 	:city
      	t.timestamps
    end
    add_index :slums, :name
  end

  def down
  	drop_index :slums, :name
  	drop_table :slums
  end
end
