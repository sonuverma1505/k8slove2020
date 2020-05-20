#!/bin/bash

if ["$x" == "app1"]
then 
	cp -rf /mycode/beginner-html-site-styled/* /var/www/html/beginner-html-site-styled
	httpd -DFOREGROUND

elif [ "$x" == "app2" ]
then
	cp -rf /mycode/project-html-website/* /var/www/html/project-html-website
	httpd -DFOREGROUND

else
	cp -rf /mycode/index.html /var/www/html/index.html
	httpd -DFOREGROUND
fi
