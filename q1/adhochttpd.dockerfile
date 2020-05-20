from centos
maintainer sonu.verma1505@gmail.com
RUN yum install httpd -y
RUN mkdir mycode
env x=app1
copy project-html-website /mycode/project-html-website
copy beginner-html-site-styled /mycode/beginner-html-site-styled 
copy start.sh /mycode/start.sh
copy index.html /mycode/index.html
run chmod +x /mycode/start.sh
expose 80
entrypoint ["/bin/bash","/mycode/start.sh"]



