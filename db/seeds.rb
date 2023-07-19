User.create!(email: "testuser@darkstarud.com",
    password: "password",
    password_confirmation: "password",
    first_name: "test",
    last_name: "admin",
    roles: 'root_admin'
)
User.create!(email: "user@darkstarud.com",
    password: "password",
    password_confirmation: "password",
    first_name: "Guest",
    last_name: "User",
    roles: 'user'
)