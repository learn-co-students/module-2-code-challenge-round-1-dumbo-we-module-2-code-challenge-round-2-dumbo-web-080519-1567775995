# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all
Episode.destroy_all
Appearance.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.first(100).each do |row|
  g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
  g.occupation = row['GoogleKnowlege_Occupation']
  g.save
end

date = Date.parse('2015-09-08')

(1..40).each do |num|
  Episode.create(date: date, number: num)
  date = date.next
end


Appearance.create(episode: Episode.first, guest: Guest.first, guest_rating:5)
Appearance.create(episode: Episode.first, guest: Guest.second, guest_rating:2)
Appearance.create(episode: Episode.first, guest: Guest.fifth, guest_rating:3)
Appearance.create(episode: Episode.second, guest: Guest.second, guest_rating:2)
Appearance.create(episode: Episode.third, guest: Guest.third, guest_rating:1)
Appearance.create(episode: Episode.second, guest: Guest.fourth, guest_rating:5)
Appearance.create(episode: Episode.second, guest: Guest.first, guest_rating:4)
Appearance.create(episode: Episode.third, guest: Guest.fourth, guest_rating:3)
