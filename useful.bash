db.createUser({user: "admin",pwd: "admin1Rel", roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]})
db.createUser({user: "admin2",pwd: "admin1Rel2", roles: [ { role: "userAdmin", db: "admin" } ]})
db.createUser({user: "admin",pwd: "admin1Rel", roles: [ { role: "root", db: "admin" } ]})


export GOBIN=$PWD/bin

GOBIN=$PWD/bin go install app/app.go
GOBIN=$PWD/bin go install static_site_gen/static_site_gen.go
GOBIN=$PWD/bin go install sitemaps_maker/sitemaps_maker.go 

GOBIN=$PWD/bin go install ../...


