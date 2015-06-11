require_relative "boot"

# Examples
car = Car.new("VW", "Golf")
car.save
car = Car.new("VW", "Passat")
car.save
puts ap Car.all
puts ap Car.find("Golf")

### Step 1
# Create a post to twitter

# twitter.tweet("this is my tweet")

### Step 2
# Create a post to Facebook

# facebook.post("my facebook status")

### Step 3
# Create a user
### User.new("Rainer", "Twitter")

### Step 4
# Post from the user depending on his preference

# user.post("my status")
# should result in a tweet with "my status"

