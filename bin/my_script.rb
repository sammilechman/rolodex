require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/2.html'
  # query_values:  { :name => 'ChangeNameSam', :email => 'changeemail@d.com' }
).to_s

puts RestClient.post(url, {user: {name: 'asdf', email: 'asdfdf'}})



# get (query string)
# post (body)
# put (body)
# delete