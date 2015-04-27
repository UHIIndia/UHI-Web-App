class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
    	t.string	:name, :null => false
    	t.references :woman
    	t.string	 :father_name
    	t.string	 :display_id
    	t.string	 :child_id
    	t.string	 :sex
    	t.date		 :registration_date
    	t.date 		 :date_of_birth
      	t.timestamps
    end
    add_index :children, :father_name
    add_index :children, :child_id
    add_index :children, :registration_date
    add_index :children, :sex
  end

  def down
  	drop_index :children, :father_name
    drop_index :children, :child_id
    drop_index :children, :registration_date
    drop_index :children, :sex
  	drop_table :children
  end
end
