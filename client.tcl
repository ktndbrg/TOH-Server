set i [socket 192.168.1.10 8192]
fconfigure $i -buffering line
puts $i "kchrez"
puts $i "hello, world"
gets $i

