class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end

#once you run this file, it will not run again
#you do not want to run migration files twice 
#if your need to run it twice, delete the database, you will lose everything that is in the database 
