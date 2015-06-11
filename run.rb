require_relative "boot"

# # Examples
# car = Car.new("VW", "Golf")
# car.save
# car = Car.new("VW", "Passat")
# car.save
# # puts ap Car.all
# # puts ap Car.find("Golf")

# ### Step 1
# # Create a post to twitter
# Twitter.new("123").save
# puts ap Twitter.all
# # twitter.Twitter

# ### Step 2
# # Create a post to Facebook
# Facebook.new.post("this is my status1")
# puts ap Facebook.all
# # facebook.post("my facebook status")

### Step 3
# Create a user
DB.clear
user = User.new("Tom", "20", [Twitter,Facebook])
user.save
user.post("Test Post")
# puts ap User.all
### User.new("Rainer", "Twitter")

### Step 4
# Post from the user depending on his preference
# body = "this is the body"
# case user.preference
#   when "twitter"
#     Twitter.new(body, user.name).save
#   when "facebook"
#     Facebook.new(nil, user.name).post(body)
#   else
#     puts "Preference is blank"
# end
puts "##########################################################"
puts "Twitter:"
puts ap Twitter.all
puts "##########################################################"
puts "Facebook:"
puts ap Facebook.all
puts "##########################################################"
# user.post("my status")
# should result in a Twitter with "my status"

binding.pry