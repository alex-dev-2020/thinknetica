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
# вариант с while после code review
test_array = []
i = 10
while  i  <= 100
   test_array << i
   i += 5
end
puts test_array


# 3. Заполнить массив числами фибоначчи до 100
# Старайся обходиться без переменных наподобие i (каунтеров)
# Ты можешь обращаться к последний элементам массива при помощи [-1], [-2]
# вариант после code review
fibo = [0, 1]
loop do
  next_fibo = fibo[-1] + fibo[-2] 
  break if next_fibo >= 100
  fibo << next_fibo
  end
puts fibo 

# 4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
# Используй методы each_with_index или each.with_index
# не придумал ничего, кроме подогнать условия под ответ ((((
# вариант после code review


alphabet = ['а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м' 'н', 'о', 'п', 'р' 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я']
vowels = ['а', 'е', 'ё', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я']
vowels_hash = {}
# проходим по alphabet итератором , он возвращает пару значений - букву и порядковый номер (индекс)
# затем проверяем, если буква содержится в vowels в хэш "падает" значение индекса, на 1 больше, т.к. а имеет нулевой индекс
vowels.each_with_index do |letter, index| 
  vowels_hash[letter] = index + 1 if alphabet.include?(letter)	
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