ARG base_image
FROM ${base_image}

# Set required CNB information

ARG stack_id
ENV CNB_STACK_ID=${stack_id}
ENV NODE_PATH=/usr/local/lib/node_modules
LABEL io.buildpacks.stack.id=${stack_id}

RUN apk add git git-lfs less openssh --no-cache

RUN npm i chalk@4 -g
RUN npm i figlet -g
RUN npm i tar-stream -g
RUN npm i node-gzip -g
RUN npm i @iarna/toml -g 
RUN npm i git-clone -g

RUN apk add --update openjdk11

# Set user and group (as declared in base image)
USER ${CNB_USER_ID}:${CNB_GROUP_ID}