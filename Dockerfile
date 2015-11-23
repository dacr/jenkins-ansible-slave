FROM dacr/jenkins-docker-slave
MAINTAINER crosson.david@gmail.com

ADD http://releases.ansible.com/ansible/ansible-2.0.0-0.6.rc1.tar.gz /tmp/ansible.tar.gz

RUN cd /opt \
 && tar xvfz /tmp/ansible.tar.gz \
 && ln -s ansible* ansible \
 && echo "export PATH=/opt/ansible/bin:$PATH" >/etc/profile.d/ansible.sh


