
# A minimal jekyll kickstart project using docker (or docker-compose)

This project was made with the idea of sharing a similar dev environment between different OS (OSX, Win, Linux) and without the need of installing ruby & Cie on our local machines. So we looked at jekyll/docker project. And started to try using it. We created a basic jekyll project skeleton.

Feel free to use it if it fits your needs to. Cheers!

## Using Docker Compose

Take a look at the `docker-compose.yml` file. Then start the container with:
```sh
docker-compose up
```

## Using Docker

*Instructions from the official Github [jekyll/docker](https://github.com/jekyll/docker/wiki/Usage:-Running) repository.*

**Native docker**

```sh
docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll \
  -it -p 127.0.0.1:4000:4000 jekyll/jekyll jekyll serve
```

**Docker-machine / Docker-Toolbox

```sh
docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll \
  -it -p $(docker-machine ip `docker-machine active`):4000:4000 \
    jekyll/jekyll jekyll serve
```
*If you are on Windows or OS X using Docker-Machine or Boot2Docker you will need to add the option --force_polling*