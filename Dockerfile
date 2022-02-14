FROM ubuntu as glfw-builder
ARG branch_name=master
ARG shared_libs=ON
RUN apt-get update && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install git cmake xorg-dev
WORKDIR /usr/src
RUN git clone -b ${branch_name} https://github.com/glfw/glfw.git
RUN mkdir /usr/src/glfw-build
WORKDIR /usr/src/glfw-build
RUN cmake -D BUILD_SHARED_LIBS=${shared_libs} /usr/src/glfw .
RUN make

FROM scratch as build-result
COPY --from=glfw-builder /usr/src/glfw-build .
