describe command('terraform output') do
  its('stdout') { should match "client_ip1" }
  its('stdout') { should match "server_ip1" }
  its('stdout') { should match "server_ip2" }
  its('stdout') { should match "server_ip3" }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end

describe command('terraform state list') do
  its('stdout') { should match "module.sofia.aws_instance.client1\n" }
  its('stdout') { should match "module.sofia.aws_instance.consul1\n" }
  its('stdout') { should match "module.sofia.aws_instance.consul2\n" }
  its('stdout') { should match "module.sofia.aws_instance.consul3\n" }
  its('stdout') { should match "module.sofia.aws_key_pair.key\n" }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end