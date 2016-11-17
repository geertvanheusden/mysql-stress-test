This is a mysql-stress test to debug/test osxfs, fuse and Docker for Mac.

It will start 4 mysql databases in parallel where the data is mounted into a local volume.
When the databases are started a script will run some stress tests to make the system crash.

Clear the folders in the data directory before starting the test.

```
docker-compose up
```