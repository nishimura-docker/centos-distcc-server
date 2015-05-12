FROM centos
RUN yum install -y gcc epel-release
RUN yum install -y distcc-server
EXPOSE 3632
CMD ["distccd", "--no-detach", "--log-stderr", "--verbose", "-a", "0.0.0.0/0"]
