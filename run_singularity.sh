#!/bin/bash
hash=2c2eeafb2cc4574f688af79ab20359a580d0c7babc0e15bbb04cd4bf5b8d699a
singularity exec -B ${PWD}:/home/rstudio/DSAA:rw docker://kkmann/reproducibleresearchtutorial@sha256:$hash make