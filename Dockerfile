#Pull base image
From tomcat:latest

# Maintainer
MAINTAINER "xxx <xxx@gmail.com">


# Copy to images tomcat path
ADD sample.war $CATALINA_HOME/webapps

#CMD ["$CATALINA_HOME/bin/startup.sh"]


EXPOSE 8080


#CMD $CATALINA_HOME/bin/startup.sh

CMD ["catalina.sh", "run"]

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


