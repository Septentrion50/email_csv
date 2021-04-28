require 'bundler'
Bundler.require

require 'open-uri'

# a web scrapper that fetches the townhouse emails for
# Val d'oise departement.
class Scrapper

  attr_accessor :emails

  def initialize
    @emails = mairie_christmas
  end

  def mairie_christmas
    page_general = Nokogiri::HTML(URI.open('http://annuaire-des-mairies.com/95/'))
    links = page_general.css('pre/a')
    out = Hash.new 
    links.each do |element|
      begin
        page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/#{element.text}"))
        name = page.css('main//h1').text
        table = page.css('table.table:nth-child(1)')
        mail = table.css('tbody/tr[4]/td[2]').text
        out[name[0..-9].downcase] = mail
      rescue OpenURI::HTTPError, URI::InvalidURIError
      end
    end
    #puts out.delete_if { |x| x == {""=>""} }
    out.delete_if { |x| x == {""=>""} }
  end

  # Convert the emails to json format and
  # save it to a prettified json file.
  def save_as_json
    f = File.new('db/emails.json', 'w')
    f.write(JSON.pretty_generate(@emails))
    f.close
  end

  # Save the emails to a google spreadsheet in Google Drive
  def save_as_spreadsheet
    session = GoogleDrive::Session.from_config("config.json")
    ws = session.spreadsheet_by_url('https://docs.google.com/spreadsheets/d/1qFESCOr8Gr1ytis8VNEg5hlJZLTLQxs51D1Lpnz53Uk/edit#gid=0').worksheets[0]
    @emails.each_pair { |key, value| ws.insert_rows(ws.num_rows + 1, [[key, value]]) }
    ws.save
  end

  # Save the emails as a csv file
  def save_as_csv
    CSV.open('db/emails.csv', 'w') do |csv|
      @emails.each_pair { |key, value| csv << [key, value] }
    end
  end
end
