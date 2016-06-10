FROM ubuntu
MAINTAINER yyabuki <yabuki.yukimitsu@imsbio.co.jp>
RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install wget \
    && wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-1.2.3.Linux_x86_64.tar.gz \
    && tar xvfz stringtie-1.2.3.Linux_x86_64.tar.gz \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
WORKDIR /stringtie-1.2.3.Linux_x86_64
ENTRYPOINT ["./stringtie"]
