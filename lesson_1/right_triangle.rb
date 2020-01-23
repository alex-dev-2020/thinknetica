# прямоугольный треугольник
# пифагоровы тройки для проверки(целочисленные)
# 3, 4, 5
# 5, 12, 13
# 7, 24, 25
# https://scientificmagazine.ru/images/PDF/2016/12/tablitsa-pifagorovykh-troek-chisel.pdf

sides =[]
# запрашиваем у юзера три стороны
puts "Please input side a"
sides << gets.to_f
puts"Please input side b"
sides << gets.to_f
puts "Please input side c"
sides << gets.to_f
# находим самую длинную сторону
a, b, h =  sides.sort
if a == b && b == h
  puts"You have an isosceles triangle!"
else
  if h**2 == a**2 + b**2
    puts "Triangle is right"
  else
    puts "Triangle is not right"
  end
end



