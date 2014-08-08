def create_user(overrides = {})
  User.create!({
                 name: 'Some User',
                 email: 'user@example.com',
                 password: 'password',
                 password_confirmation: 'password'
               }.merge(overrides))
end

def create_user0
  @user_0 = User.create!(
    name: "Scarlett Stark II",
    email: 'user0@example.com',
    password: 'password',
    password_confirmation: 'password'
  )
end

def create_user1
  user_1 = User.create!(
    name: "Theo Weber",
    email: 'user1@example.com',
    password: 'password',
    password_confirmation: 'password'
  )
end

def create_subscription0
  SubscriptionEvent.create!(
    user: @user_0,
    event_type: 'subscribed',
    date: Date.today.beginning_of_month - 11.months,
    price_per_month_in_cents: 700
  )
end