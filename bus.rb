class Bus

attr_reader :route_number, :destination


def initialize (route_number, destination)
  @route_number = route_number
  @destination = destination
  @passengers = []
end

def drive_noise
  return "Brum brum!"
end

def passenger_count
  @passengers.count
end

def pick_up_passenger(person)
  @passengers << person
end

def drop_off_passenger(person)
  @passengers.delete(person)
end

def empty_bus
  @passengers.clear
end

def collect_all_passengers(bus_stop)
  for person in bus_stop.queue
    pick_up_passenger(person)
  end
  bus_stop.empty_queue()
end





end
