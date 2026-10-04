FROM archlinux

COPY ./setup.sh /build/setup.sh
RUN chmod +x /build/setup.sh

RUN /build/setup.sh

ENTRYPOINT ["bash"]
