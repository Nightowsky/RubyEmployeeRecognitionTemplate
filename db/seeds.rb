1.upto(5) do |i|
    Employee.create(email: "employee#{i}@test.com", password: 'password')
end
 