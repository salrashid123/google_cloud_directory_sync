FROM  debian

RUN apt-get -y update
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y slapd ldap-utils supervisor 

ADD exportvolume /ldap
EXPOSE 389 636

#ENTRYPOINT ["slapd","-h", "ldap://0.0.0.0:389  ldaps://0.0.0.0:636", "-d","3","-f","/ldap/slapd.conf"]