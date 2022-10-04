FROM alpine as builder
RUN apk add --no-cache gcc musl-dev

ADD https://sqlite.org/althttpd/raw/c66da00efd620804d6d4142c1022649174a22d648f2dae2736bff62bd1665084?at=althttpd.c /althttpd.c
RUN gcc -static -Os -o althttpd althttpd.c && strip althttpd

#############################################

FROM scratch

COPY --from=builder /althttpd /
COPY --from=builder /etc/passwd /etc/passwd

COPY index.html /www/

USER nobody
EXPOSE 8080
ENTRYPOINT ["/althttpd", "-root", "/www", "-port", "8080", "-logfile", "/dev/stderr"]
