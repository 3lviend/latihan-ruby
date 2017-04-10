class Class3
 $local_var = "Local dari class3"

  def method_class3
 		 local_var2 = "local dari method_class3"
  end
 
  def method_class4
  		puts $local_var
  		#local_var2
   end
end

class3obj=Class3.new
class3obj.method_class4
