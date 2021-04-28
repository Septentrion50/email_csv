require 'bundler'
Bundler.require

require_relative 'lib/app/scrapper'

puts 'Scrapping data...'
puts
my_scrap = Scrapper.new

puts 'How do you want to save your file ?'
puts '0 - As a json file'
puts '1 - As a google spreadsheet'
puts '2 - As a CSV file'

case gets.chomp
when '0'
  my_scrap.save_as_json
when '1'
  my_scrap.save_as_spreadsheet
when '2'
  my_scrap.save_as_csv
end

puts

puts 'File saved !'
