# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # load to DB 
  Ticketlist.create ticket: 'EURUSD', premium: '0'
  Ticketlist.create ticket: 'USDCAD', premium: '0'
  Ticketlist.create ticket: 'USDJPY', premium: '1'
  Ticketlist.create ticket: 'GBPUSD', premium: '1'