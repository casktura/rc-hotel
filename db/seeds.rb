User.create!([
  {name: "Root Root Root", username: "root@rchotel.com", password: "123456789", password_confirmation: "123456789", privilege: "Root"},
  {name: "User User User", username: "user@rchotel.com", password: "123456789", password_confirmation: "123456789", privilege: "User"},
  {name: "Admin Admin Admin", username: "admin@rchotel.com", password: "123456789", password_confirmation: "123456789", privilege: "Admin"}
])

Customer.create!([
  {number: "1111111111111", name: "ประยุทธ์ จันทร์อร่อย", telephone: "081111111", email: "prayut@gmail.com"},
  {number: "2222222222222", name: "แฮร์รี่ วีสลีย์", telephone: "0822222222", email: "harry@hotmail.com"},
  {number: "1365498765432", name: "สุเทพ วงศ์กําแหง", telephone: "0877777777", email: "kumhang@hot.com"},
  {number: "1953479536198", name: "อภิสิทธิ์ เวชอาชีวะ", telephone: "0855555555", email: "technique@ashewa.com"},
  {number: "5902497321658", name: "ยิ่งรักษ์ ชินชิน", telephone: "0861237896", email: "chinn@hotmail.com"},
  {number: "1234567890111", name: "อุซึมากิ นารุเตะ", telephone: "4444444444", email: "ftw@gg.com"},
  {number: "1549876532197", name: "นครินทร์ เจตนาดี", telephone: "0872376001", email: "ahha@hotmail.com"}
])

ReserveStatus.create!([
  {name: "จอง"},
  {name: "ยกเลิกการจอง"},
  {name: "เข้าพัก"},
  {name: "ออกแล้ว"}
])

RoomStatus.create!([
  {name: "พร้อมใช้งาน"},
  {name: "ชำรุด"},
  {name: "ปิด"}
])

RoomType.create!([
  {name: "Superiar, King bed", cost: "1045.0"},
  {name: "Superiar, Twin bed", cost: "1045.0"},
  {name: "Juniar, King bed", cost: "2420.0"},
  {name: "Juniar, Twin bed", cost: "2420.0"},
  {name: "Executive, King bed", cost: "3300.0"},
  {name: "Executive, Twin bed", cost: "3300.0"},
  {name: "President, King bed", cost: "7150.0"},
  {name: "President, Twin bed", cost: "7150.0"}
])

Room.create!([
  {number: "204", room_type_id: 1, room_status_id: 1},
  {number: "205", room_type_id: 1, room_status_id: 1},
  {number: "202", room_type_id: 1, room_status_id: 1},
  {number: "203", room_type_id: 1, room_status_id: 1},
  {number: "201", room_type_id: 1, room_status_id: 1},
  {number: "206", room_type_id: 1, room_status_id: 1},
  {number: "207", room_type_id: 2, room_status_id: 1},
  {number: "208", room_type_id: 2, room_status_id: 1},
  {number: "209", room_type_id: 2, room_status_id: 1},
  {number: "210", room_type_id: 2, room_status_id: 1},
  {number: "211", room_type_id: 3, room_status_id: 1},
  {number: "212", room_type_id: 3, room_status_id: 1},
  {number: "301", room_type_id: 1, room_status_id: 1},
  {number: "302", room_type_id: 1, room_status_id: 1},
  {number: "303", room_type_id: 1, room_status_id: 1},
  {number: "304", room_type_id: 1, room_status_id: 1},
  {number: "305", room_type_id: 1, room_status_id: 1},
  {number: "306", room_type_id: 1, room_status_id: 1},
  {number: "307", room_type_id: 2, room_status_id: 1},
  {number: "308", room_type_id: 2, room_status_id: 1},
  {number: "309", room_type_id: 2, room_status_id: 1},
  {number: "310", room_type_id: 2, room_status_id: 1},
  {number: "311", room_type_id: 3, room_status_id: 1},
  {number: "312", room_type_id: 3, room_status_id: 1},
  {number: "401", room_type_id: 1, room_status_id: 1},
  {number: "402", room_type_id: 1, room_status_id: 1},
  {number: "403", room_type_id: 1, room_status_id: 1},
  {number: "404", room_type_id: 1, room_status_id: 1},
  {number: "405", room_type_id: 1, room_status_id: 1},
  {number: "406", room_type_id: 1, room_status_id: 1},
  {number: "407", room_type_id: 2, room_status_id: 1},
  {number: "408", room_type_id: 2, room_status_id: 1},
  {number: "409", room_type_id: 2, room_status_id: 1},
  {number: "410", room_type_id: 2, room_status_id: 1},
  {number: "411", room_type_id: 3, room_status_id: 1},
  {number: "412", room_type_id: 3, room_status_id: 1},
  {number: "501", room_type_id: 1, room_status_id: 1},
  {number: "502", room_type_id: 1, room_status_id: 1},
  {number: "503", room_type_id: 1, room_status_id: 1},
  {number: "504", room_type_id: 1, room_status_id: 1},
  {number: "505", room_type_id: 1, room_status_id: 1},
  {number: "506", room_type_id: 1, room_status_id: 1},
  {number: "507", room_type_id: 2, room_status_id: 1},
  {number: "508", room_type_id: 2, room_status_id: 1},
  {number: "509", room_type_id: 2, room_status_id: 1},
  {number: "510", room_type_id: 2, room_status_id: 1},
  {number: "511", room_type_id: 3, room_status_id: 1},
  {number: "512", room_type_id: 3, room_status_id: 1}
])

Reserf.create!([
  {customer_id: 2, guest_amount: 5, night_amount: 10, room_amount: 2, reserve_status_id: 3, booking_date: nil, check_in_date: "2015-04-27", check_in_time: "2000-01-01 14:00:00", check_out_date: "2015-05-07", check_out_time: nil, user_id: 1},
  {customer_id: 1, guest_amount: 2, night_amount: 5, room_amount: 1, reserve_status_id: 1, booking_date: "2015-04-27", check_in_date: "2015-04-30", check_in_time: nil, check_out_date: "2015-05-05", check_out_time: nil, user_id: 1}
])

Reservation.create!([
  {reserf_id: 2, room_id: 38, optional_bed: 0, optional_bed_cost: "495.0"},
  {reserf_id: 1, room_id: 7, optional_bed: 1, optional_bed_cost: "495.0"},
  {reserf_id: 1, room_id: 8, optional_bed: 0, optional_bed_cost: "495.0"}
])
