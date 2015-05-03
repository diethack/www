FROM diethack/archlinux:2014-07-25
ADD diethack-www /diethack-www
WORKDIR /diethack-www
RUN ["bash", "-l", "/diethack-www/setup/setup.sh"]
