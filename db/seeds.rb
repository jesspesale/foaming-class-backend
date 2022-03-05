
require 'httparty'

response = HTTParty.get('https://s3.us-west-2.amazonaws.com/secure.notion-static.com/4fc14642-a3d6-424b-b621-5ecf5d955d7f/foam-seed.json?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220305%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220305T185759Z&X-Amz-Expires=86400&X-Amz-Signature=2c0934eb3373ef31e6ad0755ccbf181e9f633854cdf6807c507d43618593438c&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22foam-seed.json%22&x-id=GetObject')
reactors = JSON.parse(response.body)

reactors.each do |reactor|
    Reactor.create(reactor)
end




# require 'json'
# require_relative './reactors.json'

# file = File.open("./reactors.json")

# reactors = JSON.load(file)

# reactors = JSON.parse(File.read(Rails.root.join('reactors.json')))
# reactors = JSON.parse(File.read('reactors.json'))

# puts reactors
# reactors.each do |reactor|
#     Reactor.create(reactor)
# end
# reactor1 = Reactor.create(url: "https://take-home-foam-challenge.s3.us-west-2.amazonaws.com/prod-exp13436-2020-01-08-at-04.25.42-0fw8tob3vhrhl8u0f3mu2g37bwnojkpwiaku4rfi3xk868y7dygr2hbge1oenzmc.png", last_modified: "2022-02-23T21:31:27.000Z")
# reactor2 = Reactor.create(url: "https://take-home-foam-challenge.s3.us-west-2.amazonaws.com/prod-exp13436-2020-01-08-at-04.26.45-gufo8yohnsyuh4ys4zav04g9xes9bjum0tm7674n1zml5xoffbf49jtg66iom9et.png", last_modified: "2022-02-23T21:31:27.000Z")

# data_hash = JSON.parse(File.read('reactors.json'))
# reactors = data_hash['reactors'].first
# reactors.map do |reactor|
#   puts "#{reactor}}"
# end