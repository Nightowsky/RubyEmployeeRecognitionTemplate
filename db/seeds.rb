1.upto(5) do |i|
    Employee.create(email: "employee#{i}@test.com", password: 'password')
end

AdminUser.where(email: 'admin@test.com').first_or_create!(password: 'admin123')
