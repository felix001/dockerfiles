db files are stored within /opt/mongodb on host
```
docker run  -d -p 27017:27017 --net=inside --name=mongo --restart=always -i -t -v /opt/mongodb:/data/db mongo-v0.0.2
```
