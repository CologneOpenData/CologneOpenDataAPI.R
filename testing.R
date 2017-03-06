library(CologneOpenDataAPI)
?CologneOpenDataAPI

### data.info
# todo:
# - set outputs to class
# - create print method

g <- get_grps()
g
resources(g) # -> NULL

p <- get_packages()
p
resources(p) # -> NULL

get_resources_info("63d138aa-8297-438a-ad36-3916bd37c60b")
# NULL, since a package id was queried

pri <- get_resources_info("ab37eae3-cf4f-476b-9146-29a3e2b93c89")
pri

pri <- get_resources_info("7f0fd6df-308f-45f8-8f30-ed59b34c8d99")
pri

### data.bundle.list
# todo:
# - print method
# - as.data.frame method

pr <- get_package_resources()
View(resources(pr))
View(as.data.frame(pr))

### data.bundle
# todo:
# - print method

pr1 <- pr[[10]]
pr1
resources(pr1)
as.data.frame(pr1)
str(as.data.frame(pr1))

pi <- get_package_info("vornamen")
resources(pi)
as.data.frame(pi)
str(as.data.frame(pi))

pi.error <- get_package_info("vornamen.error")


### EOF
