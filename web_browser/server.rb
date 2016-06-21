require 'socket'               # Get sockets from stdlib
response_body = File.read("./index.html")


server = TCPServer.open(2000)  # Socket to listen on port 2000
loop {                         # Servers run forever
  client = server.accept       # Wait for a client to connect
  client.puts(Time.now.ctime)  # Send the time to the client
  client.puts response_body
  client.puts "Closing the connection. Bye!"
  client.close                 # Disconnect from the client
}