FROM alpine AS build
RUN mkdir /code
RUN apk --no-cache add git build-base
WORKDIR /code
RUN git clone https://git.suckless.org/quark ./
RUN make
RUN make install all

FROM alpine

RUN mkdir /quarkl
WORKDIR /quark
COPY --from=build /code /quark
RUN mkdir /html
# mount to /html
# VOLUME ["/html"]   
# EXPOSE 80
# CMD ["./quark", "-h", "0.0.0.0", "-p", "80", "-d", "/html"]


