class Patient

  attr_accessor :name, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

<<<<<<< HEAD
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
=======
>>>>>>> 9e01d3fe73b07efcfd150a7e2138a04d6f927919
  def appointments
    Appointment.all.select {|app| app.patient == self}
  end

  def doctors
    appointments.map {|app| app.doctor}
  end

<<<<<<< HEAD
=======
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

>>>>>>> 9e01d3fe73b07efcfd150a7e2138a04d6f927919
end