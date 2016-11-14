
```
docker build . -t mysql-stress
docker run -d --name stress -v $PWD/data:/var/lib/mysql mysql-stress
docker exec -it stress bash
```