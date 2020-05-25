class Api
    puts "Api class loaded"
    BASE_URL = "https://breakingbadapi.com/api/characters" #this is API's base URL, it's constant because... well it doesn't change. 

    def self.get_data
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response.body)
        data.each do |element|
            id = element["char_id"]
            name = element["name"]
            birthday = element["birthday"]
            img = element["img"]
            actor = element["portrayed"]
            occupation = element["occupation"]
            status = element["status"]
            nickname = element["nickname"]
            Breakingbad.new(id, name, birthday, img, actor, occupation, nickname)    
    end
end


end



