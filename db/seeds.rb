1.upto(5) do |i|
    Employee.create(email: "employee#{i}@test.com", password: 'password')
end

AdminUser.create(email: "admin@test.com", password: 'admin123')rubo
