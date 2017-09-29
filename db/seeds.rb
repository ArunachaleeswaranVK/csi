# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first) sbcprod


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'instinprod.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Institute.new
  t.imno = row['IM No']
  t.name = row['Instititution Name']
  t.address = row['Address']
  t.city = row['City']
  t.state = row['State']
  t.nominating_authority = row['Authority']
 

  t.save
  puts "#{t.imno}, #{t.name} saved"
end

puts "There are now #{Institute.count} rows in the transactions table"