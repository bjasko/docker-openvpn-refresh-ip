FROM ubuntu:14.04
MAINTAINER Jasmin Beganović <bjasko@bring.out.ba>

  
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables python-pip python-dev supervisor  traceroute tcpdump
RUN pip install pyrax

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

VOLUME  ["/etc/openvpn"]

CMD ["/usr/bin/supervisord"]

