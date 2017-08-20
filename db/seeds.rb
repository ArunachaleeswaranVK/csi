# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'sbcs.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv[0..20].each do |row|
  t = Sbc.new
  t.imno = row['IM No']
  t.sbc_membership_no = row['SBC-Mem-No']
  t.sbc_name = row['Student Branch Coordinator']
  t.sbc_phone = row['SBC - Phone']
  t.sbc_email = row['SBC - Email']
 
  t.save
  puts "#{t.imno}, #{t.sbc_name} saved"
end

puts "There are now #{Sbc.count} rows in the transactions table"