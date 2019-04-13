module CalculateBMI
    def self.check(height,weight)
        puts"in calaculate BMI lib"
heightm=(height.to_f*height.to_f)
puts "height in meters>>>>>>>>>#{heightm}"
calculate =weight/heightm
puts "cal bmi#{calculate}"
if calculate <18
result= "Underweight"
elsif calculate >=18 and calculate <=24.9
result = "Normal"
elsif calculate >=25 and calculate <= 29.9 
result = "Overweight"
elsif calculate >=30
result = "Obese"
end
return result
end
end
