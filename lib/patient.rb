class Patient 
  
   @@all = []
  
  attr_accessor :name
  
  def initialize(name) 
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appintments
    Appointment.all.select{|app| app.patient == self}
  end 
  
end 