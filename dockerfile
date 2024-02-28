from alpine
Maintainer kadritinhinane (kadritinhinane@yahoo.fr)
run apk update
run apk add nginx 
run apk add git
expose 80
run rm -rf /var/www/html/*
run git clone https://github.com/cloudacademy/static-website-example.git /var/www/html/*
entrypoint "/usr/sbin/nginx", "-g", "deamon off;"
