# sample repo showing how to create Consul cluster in AWS with Terraform

# V0.0.1
Cluster of 3 consul servers and 1 entry in KV store
# V0.0.2
Cluster of 3 consul servers,1 entry in KV store, 1 consul client that has nginx installed, Consul-template that reads the entry from KV store and updates the webserver's homepage





#TO DO
## v0.0.3
- [ ] build repo with packer + kitchen-test , server ami with consul installed

- [ ] build repo with packer + kitchen-test , client ami with consul and nginx installed

- [ ] use own ami for server and client

## v0.0.4
- [ ] remove duplicated code - test what works, count or module

## other stuff
- [ ] Create second datacenter with 3 more servers and 1 client

- [ ] Add Vault server and encrypt Vault and Consul communication

- [ ] Add Logstash and Kibana for logs collection

## done
- [x] Add 1 nginx consul client

- [x] Use Consul-Template to obtain KV entry and update webserver's homapege

