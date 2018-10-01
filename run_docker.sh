#!/bin/bash
docker pull kkmann/reproducibleresearchtutorial@sha256:2c2eeafb2cc4574f688af79ab20359a580d0c7babc0e15bbb04cd4bf5b8d699a
docker run --name=dsaa2018 --rm -d -p 8787:8787 -e PASSWORD=dsaa2018 -v ${PWD}:/home/rstudio/DSAA kkmann/reproducibleresearchtutorial@sha256:2c2eeafb2cc4574f688af79ab20359a580d0c7babc0e15bbb04cd4bf5b8d699a
docker exec -it -w /home/rstudio/DSAA dsaa2018 make all
docker kill dsaa2018
