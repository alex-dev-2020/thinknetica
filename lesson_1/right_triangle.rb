# прямоугольный треугольник
# пифагоровы тройки для проверки(целочисленные)
# 3, 4, 5
# 5, 12, 13
# 7, 24, 25
# https://scientificmagazine.ru/images/PDF/2016/12/tablitsa-pifagorovykh-troek-chisel.pdf

# запрашиваем у юзера три стороны
puts "Please input side a"
a = gets.to_f
puts"Please input side b"
b = gets.to_f
puts "Please input side c"
c = gets.to_f
#  запилил условие для равнобедренного через регулярки 
if a == b && b == c
    puts"You have an isosceles triangle!"
else
    if a*a == b*b+c*c|| b*b == a*a + c*c || c*c == a*a + b*b
           puts "Triangle is right"
      else
           puts "Triangle is not right"
      end
end

