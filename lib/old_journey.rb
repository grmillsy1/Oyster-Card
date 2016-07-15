

class Journey
    attr_reader :start_station, :exit_station

    def in_journey?
      @exit_station.nil?
    end

    def begining_station(station)
      @start_station = station
    end

    def final_station(station)
      @exit_station = station
    end

    def fare
      return 1 if !!@exit_station && !!@start_station
      return 6
    end
end
