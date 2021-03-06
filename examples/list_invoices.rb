require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'curdbee'

# set the API key and subdomain for your account.
CurdBee::Config.api_key = "Your API Key"
CurdBee::Config.subdomain = "Your Subdomain"

@invoices = CurdBee::Invoice.list

@invoices.each do |invoice|
  puts "#{invoice.date}  #{invoice.total_due}  #{invoice.state}"
end
