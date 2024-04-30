FROM debian:latest
RUN apt update
RUN apt install -y  curl 
RUN curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh |  bash
RUN apt install -y  speedtest
RUN apt remove -y curl
RUN apt autoremove -y
ENTRYPOINT ["sh", "-c", "yes | speedtest"]
CMD [ " --json" ]