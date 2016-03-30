require 'socket'

port = 8000
STDERR.print "Listening on port #{port}\n"

server = TCPServer.new('0.0.0.0', port)

loop do

  socket = server.accept
  request = socket.gets

  STDERR.puts request

  response = "Hello, Red Hat Developers World!\n"

  socket.print "HTTP/1.1 200 OK\r\n" +
               "Content-Type: text/plain\r\n" +
               "Content-Length: " + response.bytesize.to_s + "\r\n" +
               "Connection: close\r\n"
  socket.print "\r\n"
  socket.print response

  socket.close
end
