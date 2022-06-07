# ArnoldC-Buildpack
1. edit .envrc set DNS to private registry or run:
   ```
   export DNS="<Docker_Repo>"
   ```
2. cd arnoldc-stack
3. docker login 
4. run ./build alpine
5. cd arnoldc-builder
6. update builder.toml
7. run:
   ```
   pack builder create <Docker_Repo>/arnoldc-builder:alpine --config ./builder.toml --publish
   ```
8. run:
    ``` 
    pack config default-builder <Docker_Repo>/arnoldc-builder:alpine
    ```
9.  cd root
10. run: 
    ```
    pack buildpack package <Docker_Repo>/arnoldc-buildpack --config ./package.toml  --publish
    ``` 
11.  run: 
    ```
    pack build <Docker_Repo>/arnoldc-app --path ./app --buildpack <Docker_Repo>/arnoldc-buildpack --env "NODE_PATH=/usr/local/lib/node_modules"
    ```

# Run the code at command line:
```
docker run -it --entrypoint=hello <Docker_Repo>/arnoldc-app
docker run -it --entrypoint=count <Docker_Repo>/arnoldc-app
```

# Run the code on the web 
```
docker run -p 8080:8080 -d <Docker_Repo>/arnoldc-app
curl http://localhost:8080/
curl http://localhost:8080/run/hello 
curl http://localhost:8080/run/count
```

# KPACK - TODO
1. kubectl apply -f https://github.com/pivotal/kpack/releases/download/v0.5.3/release-0.5.3.yaml
2. kubectl get pods --namespace kpack --watch
