class CreateCities < ActiveRecord::Migration
  def up
  	create_table :cities do |t|
      t.string 	:name, :null => false
      t.string 	:code
      t.timestamps
    end
    add_index :cities, :name
    add_index :cities, :code
  end

  def down
  	drop_index :cities, :name
  	drop_index :cities, :code
  	drop_table :cities
  end
end

