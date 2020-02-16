# thinknetica
## RoR итенсив от Thinknetica 

### Lesson 1

[ideal_weight.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_1/ideal_weight.rb) - считаем идеальный вес 

[quadratic_eq.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_1/quadratic_eq.rb) - нахождение корней квадратного уравнения 

[right_triangle.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_1/right_triangle.rb) - определяем, является ли треугольник прямоугольным 

[triangle_area.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_1/triangle_area.rb) - площадь треугольника 


### Lesson 2

[lesson_2.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_2/lesson_2.rb)

1. Сделать хеш, содеращий месяцы и количество дней в месяце. 
2. Заполнить массив числами от 10 до 100 с шагом 5
3. Заполнить массив числами фибоначчи до 100
4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). 
Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
6. Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом). 
даже если покупки одинаковые - скрипт хранит их как отдельные записи

 ### Lesson 3
 
 [route.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_3/route.rb)
 Класс Route (Маршрут):
 
  • Имеет начальную и конечную станцию, а также список промежуточных станций. Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
  
  • Может добавлять промежуточную станцию в список
  
  • Может удалять промежуточную станцию из списка
  
  • Может выводить список всех станций по-порядку от начальной до конечной
 
 [station.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_3/station.rb)
 Класс Station (Станция):
 
  • Имеет название, которое указывается при ее создании
  
  • Может принимать поезда (по одному за раз)
  
  • Может возвращать список всех поездов на станции, находящиеся в текущий момент
  
  • Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
  
  • Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
    
 
 [train.rb](https://github.com/alex-dev-2020/thinknetica/blob/master/lesson_3/train.rb)
 Класс Train (Поезд):
 
 • Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
 
 • Может набирать скорость
 
 • Может возвращать текущую скорость
 
 • Может тормозить (сбрасывать скорость до нуля)
 
 • Может возвращать количество вагонов
 
 • Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
 
 • Может принимать маршрут следования (объект класса Route). 
 
 • При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
 
 • Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
 
 • Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
 

