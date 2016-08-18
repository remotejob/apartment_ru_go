#! /bin/bash

cp config.gcfg config.gcfg.example

GOBIN=$PWD/bin go install app/app.go
GOBIN=$PWD/bin go install static_site_gen/static_site_gen.go
GOBIN=$PWD/bin go install sitemaps_maker/sitemaps_maker.go

#tar zcf -  --exclude '*.test' bin/ templates/ assets/ config.gcfg.example commonwords.csv useful.bash |ssh juno@104.131.38.162 tar zxf - -C jbs_generator
tar zcfv -  --exclude '*.test' bin/ templates/  config.gcfg.example  useful.bash |ssh juno@104.131.38.162 tar zxf - -C apartment_go_ru

tar zcfv - assets/ |ssh juno@104.131.38.162 tar zxf - -C static/kvartira-tsentr.eu
tar zcfv - assets/ |ssh juno@104.131.38.162 tar zxf - -C static/www.kvartira-tsentr.eu

#scp juno@104.236.237.125:gojobextractor/mytags.csv .


