FROM amazonlinux:2
WORKDIR /tmp
RUN yum -y install vim httpd at wget python3

RUN /usr/sbin/atd
RUN wget https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_x86_64.rpm
RUN rpm -U mod-pagespeed-stable_current_x86_64.rpm

RUN pip3 install supervisor
COPY supervisord.conf /etc/supervisord.conf

CMD ["/usr/local/bin/supervisord"]