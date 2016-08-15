db.createUser({user: "admin",pwd: "admin1Rel", roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]})
db.createUser({user: "admin2",pwd: "admin1Rel2", roles: [ { role: "userAdmin", db: "admin" } ]})
db.createUser({user: "admin",pwd: "admin1Rel", roles: [ { role: "root", db: "admin" } ]})
