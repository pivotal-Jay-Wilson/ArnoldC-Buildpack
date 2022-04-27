# ArnoldC-Buildpack
1. cd arnoldc-stack
2. docker login
3. run ./build
4.  cd arnoldc-builder
5.  update builder.toml
6.  run ```pack builder create harbor.52.143.84.12.getmoss.site/library/arnoldc-builder:alpine --config ./builder.toml --publish```
7.  pack build <image-name> --builder harbor.52.143.84.12.getmoss.site/library/arnoldc-builder:alpine 
8.  pack config default-builder harbor.52.143.84.12.getmoss.site/library/arnoldc-builder:alpine
9.  cd root
10. pack buildpack package harbor.52.143.84.12.getmoss.site/library/arnoldc-buildpack --config ./package.toml  --publish 
11. pack build harbor.52.143.84.12.getmoss.site/library/arnoldc-app --path ./app --buildpack harbor.52.143.84.12.getmoss.site/library/arnoldc-buildpack --env "NODE_PATH=/usr/local/lib/node_modules"

# Run the code at command line:
docker run -it --entrypoint=hello harbor.52.143.84.12.getmoss.site/library/arnoldc-app
docker run -it --entrypoint=count harbor.52.143.84.12.getmoss.site/library/arnoldc-app

# Run the code on the web 
docker run -p 8080:8080 -d harbor.52.143.84.12.getmoss.site/library/arnoldc-app
curl http://localhost:8080/
curl http://localhost:8080/run/hello 
curl http://localhost:8080/run/count
