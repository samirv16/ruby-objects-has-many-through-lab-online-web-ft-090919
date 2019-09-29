class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|app| app.doctor == self}
  end

  def patients
    appointments.map {|app| app.patient}
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
<<<<<<< HEAD
    Appointment.new(date, patient, self)
=======
    Appointment.new(patient, date, self)
>>>>>>> 9e01d3fe73b07efcfd150a7e2138a04d6f927919
  end

end