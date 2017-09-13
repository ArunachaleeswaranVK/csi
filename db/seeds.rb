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
  t = Chapter.new
  t.chapter_name = row['Chapter Name']
  t.region = row['Region']
  t.category = row['Category']
  t.name = row['Name']
  t.designation = row['Designation']
  t.email = row['Email']
  t.mobile = row['Mobile']

  t.save
  puts "#{t.email}, #{t.password} saved"
end

puts "There are now #{Chapter} rows in the transactions table"