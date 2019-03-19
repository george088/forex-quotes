# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# load quotes from fxcorporate.com and load to DB
  Ticketlist.select(:ticket).each do |element|

    url = "https://candledata.fxcorporate.com/D1/#{element.ticket}/2012.csv.gz"
    folder = "#{Rails.root}/public/downloads/"
    file_name = "#{element.ticket}_2012"
    
    full_path = folder + file_name + '.csv.gz'

    open(folder + file_name + '.csv.gz', 'wb') { |file| file << open(url).read } 

    Zlib::GzipReader.open(full_path).each_line do |gz|
      puts line = gz.split(',')

      if !(line[0] == 'DateTime')
        Quote.create(close_time: Date.strptime(line[0].split(' ')[0], '%m/%d/%Y').to_s, open: line[1], high: line[2], low: line[3], close: line[4], ticket: element.ticket)
      end
    end
  end