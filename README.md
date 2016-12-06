-- Models

# User
  - name: String
  - age: positive number
  - gender: male / female
  - infected: true / false

# Location
  - user_id: integer
  - lat: number
  - long: number

# InfectionNotification
  - infected_user_id
  - reporter_user_id

# Inventory
  user_id: integer
  item: item_id
  quantity: number

# Item
  name: [water, food, medicine, munition]
  points: positive number


-- Actions

# POST /users -> create user
# PATCH /users/:id/infected -> mark user as infected
# POST /location -> save users location
# POST /users/:id/inventory -> add item to inventory
# DELETE /users/:id/inventory/:id -> remove item from inventory
# POST /exchanges -> exchange items between users

# GET /reports/percentage_of/:infected [true/false]?
# GET /reports/avg_item_quantity/:user_id (optional?)
# GET /reports/lost_points


-- Reports

# Percentage of infected
  x = select count(*) from users where infected = true
  y = select count(*) form users;

# Percentage of not infected
  x = select count(*) from users where infected = false
  y = select count(*) form users;

# Average quantity of items per user
  select avg(quantity) from inventory group by item_id where user_id in (select id from users where infected = false)

# Lost points on infected users
  select sum(points) from inventory where user_id in (select id from users where infected = false)
