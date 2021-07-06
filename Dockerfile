FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install inetutils-ping tcpdump iproute2 iperf -y
COPY script.sh /script.sh
RUN chmod +X /script.sh
RUN chmod 777 /script.sh
RUN apt-get clean autoclean
RUN apt-get autoremove --yes
CMD /script.sh