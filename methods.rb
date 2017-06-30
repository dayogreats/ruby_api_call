require 'readline'
require 'uri'
require 'open-uri'



# Ask the user (via the command line) to provide valid uris.
def query_user_for_uri
  input_uri = nil
  puts "\n* First, we need a valid uri."
  input_uri = valid_uri
  return input_uri
end

def  valid_uri  
  uri = nil

  until uri.is_a? URI
    prompt = "Please enter a valid uri: "
    response = Readline.readline(prompt, true)
    
    # We have the option to quit at any time.
    exit if ['quit', 'exit', 'q', 'x'].include?(response)

    begin
      uri = URI.parse(response)
    rescue ArgumentError
      puts "\nInvalid uri format."
    end
    
  end
  return uri
end
