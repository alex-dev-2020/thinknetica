# Сделать хеш, содеращий месяцы и количество дней в месяце. 
# В цикле выводить те месяцы, у которых количество дней ровно 30

days_in_a_month = {
  Jan: 31, 
  Feb: 28, 
  Mar: 31, 
  Apr: 30, 
  May: 31, 
  Jun: 30, 
  Jul: 31, 
  Aug: 31, 
  Sep: 30, 
  Oct: 31, 
  Nov: 30, 
  Dec: 31}

days_in_a_month.each {|month, days| puts month if days == 30}  }



# Заполнить массив числами от 10 до 100 с шагом 5
# вариант через until
test_array = []
i = 10
until i==105 # при значении i = 100 последнее число будет 95
    test_array << i
	i += 5
end
#  вариант в одну строку - более изящно(связали два метода  ().step() и .to_a)
test_array = (10..100).step(5).to_a