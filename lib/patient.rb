class Patient
  attr_accessor :appointments
  attr_reader :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
    appointment.doctor.patients << self
  end

  def doctors
    appointments.collect{|appointment| appointment.doctor }
  end
end
