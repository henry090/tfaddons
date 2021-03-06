
ARG BASE_IMAGE=rstudio/r-base
FROM ${BASE_IMAGE}:centos6

ARG R_VERSION=4.0.0
ARG OS_IDENTIFIER=centos-6

# Install R
RUN wget https://cdn.rstudio.com/r/${OS_IDENTIFIER}/pkgs/R-${R_VERSION}-1-1.x86_64.rpm && \
    yum -y install epel-release && \
    yum -y install ./R-${R_VERSION}-1-1.x86_64.rpm && \
    ln -s /opt/R/${R_VERSION}/bin/R /usr/bin/R && \
    ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/bin/Rscript && \
    ln -s /opt/R/${R_VERSION}/lib/R /usr/lib/R && \
    rm R-${R_VERSION}-1-1.x86_64.rpm && \
    yum -y remove epel-release && \
    yum clean all

# Install git
RUN yum update -y && \
    yum upgrade -y && \
    yum install -y git

# Clone the files into the docker container
RUN git clone https://github.com/henry090/tfaddons.git k

WORKDIR k

# Install dependecies
RUN R -e "install.packages('remotes', repos='http://cran.us.r-project.org')"
RUN R -e "remotes::install_deps(dependencies =  TRUE)"
RUN R -e "remotes::install_cran('rcmdcheck',repos='http://cran.us.r-project.org')"


# Install python
RUN R -e "remotes::install_github('rstudio/reticulate')"
RUN R -e "try(reticulate::install_miniconda())"
RUN R -e "reticulate::conda_create('r-reticulate', packages = 'python==3.6.10')"


# Install TF Addons
RUN R -e "remotes::install_local()"
RUN R -e "tensorflow::install_tensorflow(version = '2.1')"
RUN R -e "reticulate::py_install(c('setuptools', 'wheel', 'requests','tqdm'), pip = TRUE)"
RUN R -e "tfaddons::install_tfaddons()"

# Check
RUN R -e "rcmdcheck::rcmdcheck(args = '--no-manual', error_on = 'warning', check_dir = 'check')"


