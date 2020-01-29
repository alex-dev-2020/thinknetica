# 1. Сделать хеш, содеращий месяцы и количество дней в месяце. 
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

days_in_a_month.each {|month, days| puts month if days == 30} 



# 2. Заполнить массив числами от 10 до 100 с шагом 5
# вариант через until
test_array = []
i = 10
until i==105 # при значении i = 100 последнее число будет 95
    test_array << i
	i += 5
end
#  вариант в одну строку - более изящно(связали два метода  ().step() и .to_a)
test_array = (10..100).step(5).to_a

# 3. Заполнить массив числами фибоначчи до 100
# https://ru.wikipedia.org/wiki/%D0%A7%D0%B8%D1%81%D0%BB%D0%B0_%D0%A4%D0%B8%D0%B1%D0%BE%D0%BD%D0%B0%D1%87%D1%87%D0%B8
# объявляем массив. сразу пишем первые два чиисла (0, 1) 
fibo = [0, 1]
# индекс 
i = 2
loop do
  next_fibo = fibo[i-1] + fibo[i-2] 
  break if next_fibo >= 100
  fibo << next_fibo
  i += 1
end

# 4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).

alphabet = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя"
vowels = "аеёиоуыэюя"
vowels_hash = {}
  for i in 0..vowels.length - 1 
    vowels_hash[vowels[i]] = alphabet.index(vowels[i]) + 1
  end
puts vowels_hash

# 5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). 
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.

print "Введите день: "
day = gets.chomp.to_i
print "и месяц: "
month = gets.chomp.to_i 
print "и год: "
year = gets.chomp.to_i

days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_in_month[1] = 29 if year % 400 == 0 || ( year % 4 ==0 && year % 100 != 0)

date = 0
for i in 0..month - 2
  date += days_in_month[i]
end
date += day

puts "Порядковый номер даты: #{date}"

# 6. Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом). 
#  даже если покупки одинаковые - скрипт хранит их как отдельные записи
cart = {}
sum = 0
loop do
  print "Введите название товара (или \"стоп\"): "
  name = gets.chomp
  break if name == "стоп"
  print "цену: "
  price = gets.chomp.to_f
  print "кол-во: "
  count = gets.chomp.to_f
  
  cart[name] = {"price" => price, "count" => count}  
end 

cart.each {|name, hash| sum += hash["price"] * hash["count"]}

puts cart
puts "Итого: #{sum}"