class Train
  attr_reader :id, :type, :wagons, :current_station

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
    @speed -= delta
    @speed = @speed > 0 ? @speed : stop
  end

  def stop
    @speed = 0
  end

  def add_wagon
    @speed == 0 ? @wagons += 1
  end

  def detach_wagon
    (@speed == 0 && wagons > 0) ? @wagons -= 1
  end

  def accept_route(route)
    @route = route
    @current_station = @route.stations.first
    @current_station_index = @route.stations.index(@current_station)
    @current_station.train_in(self)
  end

  def move_forward
    return unless next_station
    @current_station.train_out(self)
    next_station.train_in(self)
    @current_station_index += 1
    @current_station = @route.stations[@current_station_index]
  end

  def move_back
    return unless previous_station
    @current_station.train_out(self)
    previous_station.train_in(self)
    @current_station_index -= 1
    @current_station = @route.stations[@current_station_index]
  end

  def next_station
    @route.stations[@current_station_index + 1] if @route.stations[@current_station_index] != @route.stations.last
  end

  def previous_station
    @route.stations[@current_station_index - 1] if @route.stations[@current_station_index] != @route.stations.first
  end
end
