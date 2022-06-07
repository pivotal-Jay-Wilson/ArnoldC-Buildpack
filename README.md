# ArnoldC-Buildpack
1. Install pack command https://buildpacks.io/docs/tools/pack/
2. Edit .envrc set DNS to private registry or run:
   ```
   export DNS="<Docker_Repo>"
   ```
3. cd arnoldc-stack
4. docker login <Docker_Repo>
5. run ./build alpine
6. cd arnoldc-builder
7. update builder.toml
8. run:
   ```
   pack builder create <Docker_Repo>/arnoldc-builder:alpine --config ./builder.toml --publish
   ```
9. run:
    ``` 
    pack config default-builder <Docker_Repo>/arnoldc-builder:alpine
    ```
10. cd root
11. run: 
    ```
    pack buildpack package <Docker_Repo>/arnoldc-buildpack --config ./package.toml  --publish
    ``` 
12.  run: 
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
