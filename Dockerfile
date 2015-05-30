FROM ubuntu:14.04
RUN sed -i -E 's/^#(.ModLoad imudp)/\1/' /etc/rsyslog.conf
RUN sed -i -E 's/^#(.UDPServerRun 514)/\1/' /etc/rsyslog.conf
VOLUME ["/var/log"]
EXPOSE 514/udp
ENTRYPOINT ["/usr/sbin/rsyslogd", "-n"]
