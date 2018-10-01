FROM rocker/verse:3.5.1

MAINTAINER Kevin Kunzmann kevin.kunzmann@mrc-bsu.cam.ac.uk

# update apt
RUN sudo apt-get update

# install python and required packages
RUN sudo apt-get install -y python3-pip python3-dev python3-tk
RUN sudo pip3 install -U pip
RUN sudo pip3 install numpy==1.14.3 matplotlib==2.2.2 tensorflow==1.8.0


# install required R packages
ADD MRCBSUReport /usr/local/MRCBSUReport
RUN R -e "install.packages('/usr/local/MRCBSUReport', repos = NULL, type = 'source')"
RUN R -e "packageurl <- 'https://cran.r-project.org/src/contrib/reticulate_1.10.tar.gz'; install.packages(packageurl, repos=NULL, type='source')"


# install missing tex packages for fancy report
RUN tlmgr install koma-script psnfss enumitem xcolor lastpage float placeins beamer translator
