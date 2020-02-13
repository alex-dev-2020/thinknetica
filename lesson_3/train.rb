class Train

  attr_reader  :id, :type, :wagons,  :current_station

  def initialize(id, type, wagons)
    @id = id
    @type = type
    @wagons = wagons
    @speed = 0
  end
    
  def speed_up(delta)
      @speed += delta
  end

  def speed_down(delta)
  
      @speed = (@speed - delta > 0 ) ? @speed - delta : stop
  end

  def stop
    @speed = 0
  end

  # пока оставляю пустой метод
  def warning_speed
    
  end




  def add_wagon
    (@speed == 0) ? @wagons += 1  : warning_speed
  end
#
  def detach_wagon
    (@speed == 0 && wagons > 0) ? @wagons -= 1 : warning_speed    	
  end


   def accept_route(route)
    @route = route
    # При назначении маршрута первая станция принимает поезд
    @current_station = @route.stations.first
    # нужен индекс массива @route.stations чтобы передать его в методы next_station / previous-station
    @current_station_index = @route.stations.index(@current_station)
    @current_station.train_in(self)
  end



  # При перемещении текущая станция отправляет поезд и следующая его принимает (проверкa уже реализована в next_station & previous_station)

  # нужен индекс массива @route.stations чтобы передать его в методы next_station / previous-station

  

  def move_forward
    @current_station.train_out(self) 
    next_station.train_in(self)
    @current_station_index += 1
    @current_station = @route.stations[@current_station_index]
  end

  #  перемещаемся назад , проверкa уже реализована в next_station & previous-station
  #  не выезжаем ли мы за границу маршрута
  def move_back
    @current_station.train_out(self)  
    previous_station.train_in(self)
    @current_station_index -= 1
    @current_station = @route.stations[@current_station_index]
  end


  def previous_station
    previous_station = (@route.stations[@current_station_index] != @route.stations.first) ? @route.stations[@current_station_index - 1] : warning_route_border
  end


  def next_station
    next_station = (@route.stations[@current_station_index] != @route.stations.last) ?  @route.stations[@current_station_index + 1] : warning_route_border
  end
 
  def warning_route_border
    puts "Only for test!"
  end


end
