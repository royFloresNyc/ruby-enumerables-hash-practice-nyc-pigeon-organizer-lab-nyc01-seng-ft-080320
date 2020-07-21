require 'pry'

def nyc_pigeon_organizer(data)
  #get and set names of pigeons as key in a result hash
  pigeon_names = pigeon_name_getter(data[:lives])
  organized_hash = pigeon_name_key_setter(pigeon_names)
  
  #iterate over input hash
  data.each do |attribute, value|
    value.each do |sub_attribute, array_of_names|
      array_of_names.each do |name|
        if organized_hash[name].has_key?(attribute)
          organized_hash[name][attribute] << sub_attribute.to_s
        else
          organized_hash[name][attribute] = [sub_attribute.to_s]
        end
      end
    end  
  end 
  
  organized_hash
end

#helper method
def pigeon_name_getter(collection)
  pigeon_names = []
  collection.each do |key, value|
    pigeon_names.concat(value)
  end
  pigeon_names
end

#helper method
def pigeon_name_key_setter(array)
  result_hash = {}
  array.each do |name|
    result_hash[name] = {}
  end
  result_hash
end
