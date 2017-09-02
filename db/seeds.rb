# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'inst.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Institute.new
  t.imno = row['IM No']
  t.name = row['Instititution Name']
  t.city = row['City']
  t.district = row['District']
  t.state = row['State']
  t.pincode = row['Pincode']
  t.nominating_authority = row['Authority']
  t.na_phone = row['Phone']
  t.na_email = row['Email']
  t.join_date = row['JoinDt']
  t.valid_till = row['Valid-Date']
  t.validity = row['Validity']
  t.save
  puts "#{t.imno}, #{t.name} saved"
end

puts "There are now #{Institute.count} rows in the transactions table"
