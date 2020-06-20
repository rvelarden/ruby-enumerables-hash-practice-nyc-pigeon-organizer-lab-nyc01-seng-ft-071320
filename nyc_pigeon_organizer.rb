def nyc_pigeon_organizer(data)
  pigeon_data = {

  :color => {

    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },

  :gender => {

    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },

  :lives => {

    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def pigeon_helper(data)

  final_hash = Hash.new

  data.each do |attribute, subattr|

    subattr.each do |subattr, name|
      
      name.each do |name|

        if final_hash.include? name

          str_subattr = subattr.to_s
          final_hash[name][attribute] << str_subattr

        else
          
          final_hash[name] = name
          str_subattr = subattr.to_s
          final_hash[name][attribute]

      end

    end

  end
  p final_hash

end

    
pigeon_helper(pigeon_data)
end 
end
