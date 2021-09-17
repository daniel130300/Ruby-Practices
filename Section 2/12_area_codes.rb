dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

def get_city_names(some_hash)
    some_hash.each{|k, v| puts k}
end

def get_area_code(somehash, key)
    somehash[key].nil? ? "" :  somehash[key]
end

loop do
    puts "Do you want to lookup an area code based on a city name? [y/n]: "
    answer = gets.chomp.downcase
    break if answer != 'y'

    get_city_names(dial_book)
    puts "Which city do you want the area code for?"
    city = gets.chomp.downcase
    get_area_code(dial_book, city)
    code = get_area_code(dial_book, city)

    if (!code.empty?)
        puts "The area code for #{city} is #{code}"
    else
        puts "Couldn't find any results based on the city name #{city}"
    end

end