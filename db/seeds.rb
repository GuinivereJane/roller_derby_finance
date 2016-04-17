# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#PaymentType.create(type: 'cheque')
#PaymentType.create(type: 'etransfer')
#PaymentType.create(type: 'cash')

Skater.create(name:'Guin Kellam', derby_name: 'Crash Landing', derby_number: 747)
Skater.create(name:'Liz Malette', derby_name: 'Darth Brawl', derby_number: 234)
Skater.create(name:'June Epstien', derby_name: 'Boba Fatale', derby_number: 567)

Payment.create(skater_id: 1, date: Time.current, payment_type_id: 1, amount: 1.23, deposit_id: 1)

Deposit.create(date: Time.current, deposit_identifier: 'ksdj3j4b3k3j', deposit_receipt_photo: "boo.hoo")
