FROM alpine
RUN apk update && \
    apk add wget && \
    wget https://github.com/fatedier/frp/releases/download/v0.34.0/frp_0.34.0_linux_amd64.tar.gz && \
    tar -zxvf frp_0.34.0_linux_amd64.tar.gz  && \
    mv frp_0.34.0_linux_amd64/frps / && 
    mv frp_0.34.0_linux_amd64/frps.ini /

CMD ["/frps", "-c", "/frps.ini"]
