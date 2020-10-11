require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end



def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)


holiday_hash.each do | season, value|
  
season_data = ((season.to_s.split).each do |i|
  i.capitalize!
  end).join(" ") + ":"

puts season_data


value.each do |chrismas, array|
  holiday_data = (((chrismas.to_s.split).each do |i|
    i.capitalize!
    end).join(" ") + ":")

  new_array = holiday_data.split('')

  new_array.collect do |i|
    if i == "_"
  new_array[new_array.index(i)] = " "

  end
  end

supply_data = array.join(", ")
data = new_array.join
new_data = data.split
new_data.collect do |i|
  i.capitalize!
end
final_data = new_data.join(" ")


puts "  " + final_data + " " + supply_data

end


end

end





# {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"


  array = []
  holiday_hash.each do |season,holi_days|
    holi_days.each do |holiday,v|
      if holiday == :fourth_of_july
        array << holiday
      elsif holiday == :memorial_day
        array << holiday    
      end
      
    end
  end
array
end







