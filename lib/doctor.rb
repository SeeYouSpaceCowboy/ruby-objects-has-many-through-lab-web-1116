class Doctor
  attr_accessor :appointments, :patients
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    appointments << appointment
  end
end
