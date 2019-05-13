## randomos/troubleshoot

#### What is this?
It is a custom troubleshoot image.


#### Usage
```bash
docker run -it --rm \
    --pid container:<container_name> \
    --net container:<container_name> \
    --cap-add sys_admin \
    --cap-add sys_ptrace \
    -v /run/shm:/run/shm \
    randomos/troubleshoot bash
```
