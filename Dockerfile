FROM centos:7
ENV VERSION 1.2.0
RUN yum install -y python3 \
    zip \
    unzip
    
ADD zip_job.sh /tmp
RUN [ -f /tmp/zip_job.sh ] && echo "zip_job.sh EXIST at /tmp ." || echo "FILE does not exist."
RUN cat /etc/centos-release
