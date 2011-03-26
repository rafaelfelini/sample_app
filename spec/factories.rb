# By using the symbol ':user', we get Factory girl to simulate the User model.
Factory.define :user do |user|
  user.name       "Michal Hartl"
  user.email      "mhartl@example.com"
  user.password   "foobar"
  user.password_confirmation "foobar"
end