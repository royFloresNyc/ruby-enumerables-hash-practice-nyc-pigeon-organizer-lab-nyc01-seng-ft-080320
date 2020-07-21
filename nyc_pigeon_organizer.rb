def nyc_pigeon_organizer(data)
  organized_hash = {}
  pigeon_name_getter(data[:lives])
  
  
  organized_hash
end

def pigeon_name_getter(collection)
  pigeon_names = []
  collection.each do |key, value|
    pigeon_names.concat(value)
  end
  pigeon_names
end

def pigeon_name_key_setter(array)
  result_hash = {}
  array.each do |name|
    result_hash[name] = {}
  end
end