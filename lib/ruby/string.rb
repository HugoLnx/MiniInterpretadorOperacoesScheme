class String
  def to_number
	  self.include?('.') ? self.to_f : self.to_i
	end
end
