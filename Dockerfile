FROM quay.io/keycloak/keycloak:15.0.2 as base

# ENV DB_VENDOR=MYSQL
# ENV DB_ADDR=mysql
# ENV DB_DATABASE=keycloak
# ENV DB_USER=keycloak
# ENV DB_PASSWORD=password
# ARG KEYCLOAK_USER=admin
# ARG KEYCLOAK_PASSWORD=Pa55w0rd
    
# ADD ./themes/cyboinsect-theme/ /opt/jboss/keycloak/themes/cyboinsect-theme/
# ADD ./themes/adminlte/ /opt/jboss/keycloak/themes/adminlte/
# ADD ./themes/material/ /opt/jboss/keycloak/themes/material/
# ADD ./imports /opt/jboss/keycloak/imports/
FROM base as builder  
ADD ./standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml

EXPOSE 8080
