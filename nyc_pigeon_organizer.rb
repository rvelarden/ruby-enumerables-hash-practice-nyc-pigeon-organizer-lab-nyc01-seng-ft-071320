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
  #this will store the new reversed hash
  new_pigeon_data = Hash.new

  #start iterating over the current hash
  count = 0
  while count < data.keys.length

      count1 = 0
      while count1 < data[data.keys[count]].keys.length

        val_count = 0
        while val_count < data[data.keys[count]].values[count1].length do
          
          #for each terminal name, get the info for this chain.
          pige_name = data[data.keys[count]].values[count1][val_count].to_s
          new_pige_atr = data.keys[count].to_sym
          new_pige_value = data[data.keys[count]].keys[count1].to_s

          #if the name has already been added, add the new data, otherwise add the new data to this name
          if new_pigeon_data.include? pige_name

            if new_pigeon_data[pige_name].include? new_pige_atr
              new_values = Array.new
              new_values << new_pigeon_data[pige_name].values
              new_values << new_pige_value
              new_pigeon_data[pige_name][new_pige_atr] = new_values.flatten
              
            else
              new_value = Array.new
              new_value << new_pige_value
              new_pigeon_data[pige_name][new_pige_atr] = new_value
              
           end

          else
            new_values = Array.new
            new_values.push(new_pige_value)
            new_pigeon_data[pige_name] = {
              new_pige_atr => new_values
            }
          end

          val_count += 1
        end

        count1 += 1
      end
      count += 1

  end

  new_pigeon_data
end
=end

