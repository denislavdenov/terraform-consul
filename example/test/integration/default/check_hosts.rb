client_ip1 = attribute(
  "client_ip1",
  description: "IP of client1 "
)
server_ip1 = attribute(
  "server_ip1",
  description: "IP of server1 "
)
server_ip2 = attribute(
  "server_ip2",
  description: "IP of server2 "
)
server_ip3 = attribute(
  "server_ip3",
  description: "IP of server3 "
)

describe http("http://#{client_ip1}:80") do
  its('status') { should cmp 200 }
end

describe http("http://#{client_ip1}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ip1}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ip2}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end

describe http("http://#{server_ip3}:8500/ui/dc1/services") do
  its('status') { should cmp 200 }
end



