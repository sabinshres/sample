#Pull base image
From sabin/tomcat-8.5

# Maintainer
MAINTAINER "xxx <xxx@gmail.com">


# Copy to images tomcat path
ADD sample.war $CATALINA_HOME/webapps

#ADD whaterve.conf /etc/apache2/sites.conf/modjk.conf

#CMD ["$CATALINA_HOME/bin/startup.sh"]


EXPOSE 8080


#CMD $CATALINA_HOME/bin/startup.sh

#CMD ["catalina.sh", "run", "& ;", "/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

CMD sh -c "catalina.sh run & sleep 5  && /usr/sbin/apache2ctl -D FOREGROUND"

#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


