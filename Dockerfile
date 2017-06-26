FROM centos:6.9
RUN mkdir -p /root/.config/nvim
COPY config/nvim/init.vim /root/.config/nvim/init.vim
COPY config/nvim/dein.toml /root/.config/nvim/dein.toml
RUN yum -y install libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip
RUN yum -y install git
RUN git clone https://github.com/neovim/neovim
RUN cd /neovim && make
RUN cd /neovim && make install


