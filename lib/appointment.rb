class Appointment

  attr_accessor :date, :patient, :doctor
  @@all = []

<<<<<<< HEAD
  def initialize(date, patient, doctor)
=======
  def initialize(patient, date, doctor)
>>>>>>> 9e01d3fe73b07efcfd150a7e2138a04d6f927919
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end