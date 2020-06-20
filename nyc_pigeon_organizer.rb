def nyc_pigeon_organizer(data)
final_results = data.each_with_object({}) do |(key, value), final_array|
  value.each do |inner_key, names|
    names.each do |name|
      if !final_array[name]
        
end 




