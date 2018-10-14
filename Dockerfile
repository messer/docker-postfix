FROM alpine:latest
RUN apk --no-cache --update add ca-certificates postfix cyrus-sasl supervisor

RUN postconf -e "mynetworks = 0.0.0.0/0" "mynetworks_style = subnet"
ADD ./syslog.ini /etc/supervisor.d/syslog.ini
ADD ./postfix.ini /etc/supervisor.d/postfix.ini
EXPOSE 25

VOLUME /etc/postfix
VOLUME /var/spool/postfix

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]

