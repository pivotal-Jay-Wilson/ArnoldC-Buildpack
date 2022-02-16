FROM node:17-alpine3.14

ARG cnb_uid=2000
ARG cnb_gid=2000

RUN apk add --no-cache xz && \
    apk add --no-cache ca-certificates &&  \
    apk add --no-cache gnupg && \
    apk add --no-cache wget 

RUN addgroup -g ${cnb_gid} cnb && adduser cnb -G cnb -s /bin/sh -u ${cnb_uid} -S

# Set required CNB information
ENV CNB_USER_ID=${cnb_uid}
ENV CNB_GROUP_ID=${cnb_gid}
