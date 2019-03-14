# sample repo showing how to create Consul cluster in AWS with Terraform

## V0.0.1
- [x] Cluster of 3 consul servers and 1 entry in KV store

## V0.0.2
- [x] Cluster of 3 consul servers,1 entry in KV store, 1 consul client that has nginx installed, Consul-template that reads the entry from KV store and updates the webserver's homepage

## v0.0.3
- [x] build repo with packer + kitchen-test , server ami with consul installed

- [x] build repo with packer + kitchen-test , client ami with consul and nginx installed

- [x] use own ami for server and client

## v0.0.4
- [x] remove duplicated code - test what works, count or module

#TO DO

## v0.0.5
- [x] move module code to own repo, terraform-aws-consul

- [x] update code to consume module from git

- [x] on client node install docker

- [x] on client node restart consul, make sure all works

## next
- [ ]
- [ ]

## other stuff
- [ ] Create second datacenter with 3 more servers and 1 client

- [ ] Add Vault server and encrypt Vault and Consul communication

- [ ] Add Logstash and Kibana for logs collection

## done
- [x] Add 1 nginx consul client

- [x] Use Consul-Template to obtain KV entry and update webserver's homapege

