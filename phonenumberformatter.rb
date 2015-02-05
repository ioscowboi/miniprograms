require 'pry'

#The purpose of this class is to re-format a string of numbers 1234567890 to 123-456-7890 
class PhonNumberFormatter

  def ToFormatNumbers(unformattedNumbers)
    #unformattedNumbers receives the numbers passed in by the user
    unformatted_Numbers = unformattedNumbers

    #Here we split formatted_Numbers into an array for each value
    unformatted_Numbers = unformatted_Numbers.split('')

    formatted_Numbers1 = unformatted_Numbers[2].concat('-')
    formatted_Numbers2 = unformatted_Numbers[5].concat('-')
    
    #Here, we initialize a variable to store the values of the strings as array values with a dash after the appropriately treated numbers: 
    formatted_Number = []
    formatted_Number = unformatted_Numbers[0..1]
    formatted_Number.push(formatted_Numbers1)
    formatted_Number.push(unformatted_Numbers[3..4])
    formatted_Number.push(formatted_Numbers2)
    formatted_Number.push(unformatted_Numbers[6..9])
    
    # concat(#{formatted_Numbers1}).concat(#{unformatted_Numbers[3,4]}).concat(#{formatted_Numbers2}).concat(#{unformatted_Numbers[6,7,8,9]})

    finalString = formatted_Number.join('')
    puts finalString
    
  end
    
end

phoneNumberFormat = PhonNumberFormatter.new
phoneNumberFormat.ToFormatNumbers("4021234567")


binding.pry

