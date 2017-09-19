

# Monthly Record 

1.upto(10).each do |i|
  amount = "#{i}" + "000"
  FlatBooking.create( agreement_amount: amount.to_i, date_of_booking: "2017/#{i}/20", base_price: 200, area: "#{i}00")
end



# Yearly Record 

0.upto(6).each do |i|
  amount = "#{i}" + "0000"
  FlatBooking.create( agreement_amount: amount.to_i, date_of_booking: "201#{i}/#{i}/20", base_price: 200, area: "#{i}50")
end