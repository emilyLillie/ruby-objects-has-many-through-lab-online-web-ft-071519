class Doctor 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  # def appointments
  # Appointment.all.collect do |appointment|
  #     appointment.doctor == self
  #   end
  # end
  
  # def new_appointment(date, patient)
  #   Appointment.new(date, patient, self)
  # end 
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
  
  # def patients
  #   Appointment.all.map do |appointment|
  #     appointment.patient 
  #   end 
  # end
  
   def appointments
    Appointment.all.select { |appt| appt.doctor == self }
  end
  
  def patients
    self.appointments.map { |appt| appt.patient }
  end
  
end 