FROM alpine AS build
RUN mkdir /code
RUN apk --no-cache add git build-base sed
WORKDIR /code
RUN git clone https://git.suckless.org/quark ./
# Add javascript mime type                                                                                     
RUN sed -i 's/} mimes\[\] = {/&\n { "js",   "application\/javascript; charset=utf-8" },/' config.def.h                                                                                            
RUN make
RUN make install all

FROM alpine
ENV PORT=8080
RUN mkdir /quark
WORKDIR /quark
COPY --from=build /code /quark
RUN mkdir /html
VOLUME ["/html"]
EXPOSE $PORT
RUN ln -s /quark/quark /usr/bin/quark
# CMD ["quark", '-h', '0.0.0.0', '-p', '80', '-d', '/html']
CMD quark -h 0.0.0.0 -p $PORT -d /html


# docker run --expose 8081 -e PORT=8081 -p 8080:8081 -v /tmp/html:/html vasaulys/quark
