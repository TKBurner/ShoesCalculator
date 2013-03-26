Shoes.app :title => "My Amazing Calculator", :width => 260, :height => 300, :resizable => false do
  stack :margin => 40 do
    @output = edit_line :width => 150
    
    
    flow do
      %w(7 8 9 / 4 5 6 * 1 2 3 - + 0).each do |op|    #for each of those  
        button op do         # create a button
          append op #that enters it's contents
        end
      end
      
      button "=" do #creating equals button
        eval_expression #calculate the result
      end
      button "C" do #creating equals button
        clear_expression #calculate the result
      end
    end
    
  end
  
  # Stick a string on the end of our input
  #
  def append(s)

    if @input.nil? #sets the intial state of the calc
      @input = "" #start empty
    end
    @input += s #stick it on the end
    @output.text = @input #add the new char to the end of the output line
  end
  
  # Evaluate the input we've got so far
  #
  def eval_expression
    @input = eval(@input).to_s #runs the input and converts it to a string
    @output.text = @input #sets output text to the input
  end
  def clear_expression
    @input = ""
    @output.text = @input
  end
end
