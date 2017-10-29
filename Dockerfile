FROM ubuntu:16.04

RUN \
    sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
    apt-get -y update && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common python-software-properties && \
    apt-get install -y ssh python-minimal locales curl git unzip vim wget ansible dbus && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

ADD . /root

RUN locale-gen en_US.UTF-8; export LANG=en_US.UTF-8

EXPOSE 80
EXPOSE 999

RUN ansible-playbook -i /root/hosts -u root /root/playbooks/lamp.yml --connection=local -vvvv

RUN echo "ServerName localhost" > /etc/apache2/httpd.conf

CMD service mysql restart
CMD service apache2 restart

RUN ansible-playbook -i /root/hosts -u root /root/playbooks/phabricator.yml --connection=local -vvvv

CMD service mysql restart
CMD service apache2 restart