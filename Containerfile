FROM alpine as builder
RUN apk add --no-cache gcc musl-dev

ADD https://sqlite.org/althttpd/raw/001b7cc47f3f2cbc7899ecb3dd16cc359baec3e1672c32414354c499d37c17ce?at=althttpd.c /althttpd.c
RUN gcc -static -Os -o althttpd althttpd.c && strip althttpd

#############################################

FROM scratch

COPY --from=builder /althttpd /
COPY --from=builder /etc/passwd /etc/passwd

COPY index.html /www/

USER nobody
EXPOSE 8080
ENTRYPOINT ["/althttpd", "-root", "/www", "-port", "8080", "-logfile", "/dev/stderr"]
