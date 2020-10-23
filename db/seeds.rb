
d = Doctor.create!(full_name: 'Dr Livingston', full_address: 'Gaustadalléen 21, 0349 Oslo')

u1 = User.create!(full_name: 'Jonathan Osterman',  phone_number: '+4773016777')
u2 = User.create!(full_name: 'Bruce Wayne',        phone_number: '+4733652690')
u3 = User.create!(full_name: 'Natalia Romanova',   phone_number: '+4748017238')
u4 = User.create!(full_name: 'Walter Kovacs',      phone_number: '+4753271332')
u5 = User.create!(full_name: 'Loki Laufeyson',     phone_number: '+4770004137')
u6 = User.create!(full_name: 'Remy LeBeau',        phone_number: '+4719375977')
u7 = User.create!(full_name: 'Alec Holland',       phone_number: '+4796327351')
u8 = User.create!(full_name: 'Adrian Veidt',       phone_number: '+4717681754')

Booking.create!(user: u1, doctor: d, full_address: 'Haugerudveien 87, 0674 Oslo',  begins_at: Time.zone.today + 10.hours)
Booking.create!(user: u2, doctor: d, full_address: 'Siebkesgate 6c, 0562 Oslo',    begins_at: Time.zone.today + 11.hours)
Booking.create!(user: u3, doctor: d, full_address: 'Hagegata 36c, 0653 Oslo',      begins_at: Time.zone.today + 12.hours)
Booking.create!(user: u4, doctor: d, full_address: 'Nordraaks Gate 3, 0266 Oslo',  begins_at: Time.zone.today + 14.hours)
Booking.create!(user: u5, doctor: d, full_address: 'Siebkesgate 6c, 0562 Oslo',    begins_at: Time.zone.today + 15.hours)
Booking.create!(user: u6, doctor: d, full_address: 'Granstangen 10a, 1051 Oslo',   begins_at: Time.zone.today + 16.hours)
Booking.create!(user: u7, doctor: d, full_address: 'Thygesons Vei 30, 0667 Oslo',  begins_at: Time.zone.today + 18.hours)
Booking.create!(user: u8, doctor: d, full_address: 'sørengkaia 64, 0194 Oslo',     begins_at: Time.zone.today + 20.hours)