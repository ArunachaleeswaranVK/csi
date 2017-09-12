# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first) sbcprod



require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'chapter.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = User.new
 
  t.email = row['Email']
  t.password = row['Mobile']

  t.save
  puts "#{t.email}, #{t.password} saved"
end

puts "There are now #{User.count} rows in the transactions table"