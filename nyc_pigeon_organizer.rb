require 'pry'

def nyc_pigeon_organizer(data)
  #get and set names of pigeons as key in a result hash
  pigeon_names = pigeon_name_getter(data[:lives])
  organized_hash = pigeon_name_key_setter(pigeon_names)
  
  #iterate over input hash
  binding.pry
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
  result_hash
end

binding.pry 