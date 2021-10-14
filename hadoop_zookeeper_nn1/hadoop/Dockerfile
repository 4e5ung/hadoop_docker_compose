#ARG HADOOP_VERSION

# https://www.docker.elastic.co/
FROM hadoop_image:latest

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu

USER hduser
RUN rm -f /home/hduser/.ssh/id_rsa /home/hduser/.ssh/id_rsa.pub /home/hduser/.ssh/authorized_keys
RUN ssh-keygen -q -N "" -C "hduser@awa-test-nn1" -t rsa -f /home/hduser/.ssh/id_rsa
RUN cp /home/hduser/.ssh/id_rsa.pub /home/hduser/.ssh/authorized_keys

USER root
COPY ./entrypoint.sh /home
RUN chmod 755 /home/entrypoint.sh

ENTRYPOINT ["sh", "/home/entrypoint.sh"]

