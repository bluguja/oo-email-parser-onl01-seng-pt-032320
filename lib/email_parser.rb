class EmailAddresslParser 
  attr_accessor :name,:csv_emails
  
  def initialize(csv_emails)

    @csv_emails = csv_emails
  end 

def parse
  puts splitEmail = csv_emails.split.collect {|address| address.split(',')} 
  returnArr = splitEmail.flatten.uniq
  returnArr
end



emails1 = "avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"
parser1 = EmailAddressParser.new(emails1)
parser1.parse 

emails2 = "avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"
parser2 = EmailAddressParser.new(emails2)
parser2.parse
