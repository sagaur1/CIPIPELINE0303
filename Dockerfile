# First Dockerfile Implementation using Sample.sh
ARG version="18.04"
FROM ubuntu:$version
RUN echo "version is "$version
ARG ENCRYPTION_KEY="99$"
LABEL MAINTAINER dj@devops.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
RUN chmod +x /code/Sample.sh
RUN echo "encryption key is "$ENCRYPTION_KEY
ENTRYPOINT ["sh","/code/Sample.sh"]
CMD ["/etc/hosts"]
