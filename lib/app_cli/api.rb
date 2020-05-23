class Api
    puts "Api class loaded"
    BASE_URL = "https://breakingbadapi.com/api/characters" #this is API's base URL, it's constant because... well it doesn't change. 

    def self.get_name
        uri = URI.parse(BASE_URL)
        response = Net::HTTP.get_response(uri)
        body = response.body
        json =JSON.parse(body)
        ap json
    end
end

Api.get_name