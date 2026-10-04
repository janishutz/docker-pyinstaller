FROM archlinux

COPY ./setup.sh /build/setup.sh
RUN chmod +x /build/build.sh
RUN chmod +x /build/prepare.sh

RUN /build/prepare.sh

ENTRYPOINT ["/build/build.sh"]
