#  идеальный вес
#  запрашиваем у пользователя имя
puts "Здравствуйте, представьтесь пожалуйста!" 
user_name = gets.to_s
# запрашиваем у пользователя рост
puts "Введите свой рост #{user_name}"
user_hight = gets.to_f

# считаем идеальный вес по формуле (("рост"-110)*1.15))
ideal_weihgt = (user_hight-100)*1.15
# puts ideal_weihgt.round(2)
# проверяем, не меньше ли нуля вес
if ideal_weihgt < 0
    puts "Ваш вес идеален, #{user_name}!"
else
    puts "Ваш идеальный вес #{ideal_weihgt.round(2)} кг., #{user_name}!"
    
end
