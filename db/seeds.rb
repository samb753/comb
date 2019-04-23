# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Phrase.destroy_all


puts 'Creating test users...'

user1 = User.create(email: 'joelsveltena@mailtime.com', password: '10101010')
user2 = User.create(email: 'margel@mailtime.com', password: '10101010')
user3 = User.create(email: 'laura@mailtime.com', password: '10101010')

user1.save!
user2.save!
user3.save!

puts 'Creating test phrases...'

phrase1 = Phrase.create!(
  first_word: 'incessant',
  second_word: 'spin',
  color: '#e5ccff',
  user: user1
)

phrase1.save!

phrase2 = Phrase.create!(
  first_word: 'tender',
  second_word: 'outreach',
  color: '#ffe0ff',
  user: user2
)

phrase2.save!

phrase3 = Phrase.create!(
  first_word: 'functional',
  second_word: 'career',
  color: '#81acf4',
  user: user3
)

phrase3.save!

phrase4 = Phrase.create!(
  first_word: 'morning',
  second_word: 'roll',
  color: '#efeed2',
  user: user1
)

phrase4.save!

phrase5 = Phrase.create!(
  first_word: 'encrusted',
  second_word: 'similarities',
  color: '#ffa885',
  user: user2
)

phrase5.save!

phrase6 = Phrase.create!(
  first_word: 'cherished',
  second_word: 'topography',
  color: '#ffcf91',
  user: user3
)

phrase6.save!

phrase7 = Phrase.create!(
  first_word: 'slippery',
  second_word: 'rhizome',
  color: '#89ffeb',
  user: user1
)

phrase7.save!

phrase8 = Phrase.create!(
 first_word: 'purring',
 second_word: 'chasm',
 color: '#41126b',
 user: user2
 )

phrase8.save!

phrase9 = Phrase.create!(
  first_word: 'balmy',
  second_word: 'farm',
  color: '#09b35b',
  user: user3
)

phrase9.save!

phrase10 = Phrase.create!(
  first_word: 'folding',
  second_word: 'embrace',
  color: '#fa1263',
  user: user1
)

phrase10.save!

phrase11 = Phrase.create!(
  first_word: 'resilient',
  second_word: 'beach',
  color: '#ffdc52',
  user: user2
)
phrase11.save!

phrase12 = Phrase.create!(
  first_word: 'juicy',
  second_word: 'window',
  color: '#ecff7d',
  user: user3
)
phrase12.save!

phrase13 = Phrase.create!(
  first_word: 'familiar',
  second_word: 'stream',
  color: '#52ebff',
  user: user1
)
phrase13.save!

phrase14 = Phrase.create!(
  first_word: 'lofty',
  second_word: 'tangle',
  color: '#9ec0ff',
  user: user1
)
phrase14.save!

phrase15 = Phrase.create!(
  first_word: 'dense',
  second_word: 'gap',
  color: '#3cfa17',
  user: user1
)
phrase15.save!

puts 'Done!'
