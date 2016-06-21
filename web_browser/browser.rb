require 'socket'

host = 'localhost'     # The web server
port = 2000                        # Default HTTP port
path = "/index.html"                 # The file we want

# This is the HTTP request we send to fetch a file
request = "GET #{path} HTTP/1.0\r\n\r\n"

socket = TCPSocket.open(host,port)  # Connect to server
puts "Made a connection to server"
while line = socket.gets   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end 
socket.print(request)               # Send request
response = socket.read              # Read complete response
# Split response at first blank line into headers and body
headers,body = response.split("\r\n\r\n", 2)
print body                          # And display it
