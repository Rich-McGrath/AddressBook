class Contact
  attr_writer :first_name, :middle_name, :last_name

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += ''
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end
end


name = Contact.new
puts "What is your first name?"
name.first_name = gets.chomp

puts "what is your middle name?"
name.middle_name = gets.chomp

puts "What is your last name?"
name.last_name = gets.chomp

puts name.full_name
