# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file



# create_table "salespeople", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.string "email"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at",

# 2. insert 1-2 rows in salespeople table.

employee_1 = Salesperson.new

employee_1["first_name"] = "Lou"
employee_1["last_name"] = "Jacoubs"
employee_1["email"] = "Lou@company.com"
employee_1.save

employee_2 = Salesperson.new

employee_2["first_name"] = "John"
employee_2["last_name"] = "Doe"
employee_2["email"] = "John@company.com"
employee_2.save

# 3. write code to display how many salespeople rows are in the database

# puts "There are #{Salesperson.all.count} employees"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

# lou = salesperson.find_by({"first_name" => "Lou"})
# lou ["email"] = "lou@xyz.com"
# lou.save
# puts lou["email"]

# puts "Salespeople: #{Salesperson.all.count}"

# CHALLENGE:
# 5. write code to display each salesperson's full name

first_name = lou["first_name"]
last_name = lou["last_name"]
puts "#{first_name} #{last_name}"

all_salespeople = Salesperson.all
for salesperson in all_salespeople
    first_name = salesperson["first_name"]
    last_name = salesperson["last_name"]
    puts "#{first_name} #{last_name}"
end 

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng


