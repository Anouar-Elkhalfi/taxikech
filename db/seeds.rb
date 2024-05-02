10.times do |i|
  Driver.create(
    name: "Chauffeur #{i + 1}",
    email: "chauffeur#{i + 1}@example.com",
    phone: "0123456789#{i}"
  )
end
puts " creation de chauffeur terminé..."
