# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
   attr_accessor :unformatted_emails
   
   def initialize(unformatted_emails)
      @unformatted_emails = unformatted_emails
   end

   def parse
      # The parse method should out parsed_emails var which is a uniq array of emails["email@email.com", "email2@email.com"]
      #binding.pry
      parsed_emails = @unformatted_emails.split(/([,\s][\s]|[\s])/)
      parsed_emails.delete_if {|element| element == ", " || element == " "}.uniq
   end
end