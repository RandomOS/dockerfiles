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
    -v /dev/shm:/dev/shm \
    randomos/troubleshoot bash
```
