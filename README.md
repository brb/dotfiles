dotfiles
========

Setup
-----

```bash
git submodule update --init
./setup.sh
```

Docker Images
-------------

```bash
for d in ./docker-images/*/; do
    docker build -t $(basename "$d") "$d"
done
```
