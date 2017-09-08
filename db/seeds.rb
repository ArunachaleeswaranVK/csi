# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first) sbcprod




require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'sbcprod.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Sbc.new
  t.imno = row['IM No']
  t.sbc_name = row['Name']
  t.sbc_email = row['Email']
  t.no_of_volunteers = row['Strength']
 
  
  t.save
  puts "#{t.sbc_name}, #{t.imno} saved"
end

puts "There are now #{Sbc.count} rows in the transactions table"