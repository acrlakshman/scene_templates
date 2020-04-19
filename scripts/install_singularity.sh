echo "--------------------------------------------"
echo "Please make sure to install dependencies before using this script"
echo "--------------------------------------------"

echo "Installing go"

export VERSION=1.14.2 OS=linux ARCH=amd64 && \
	wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz && \
	sudo tar -C /usr/local -xzvf go$VERSION.$OS-$ARCH.tar.gz && \
	rm go$VERSION.$OS-$ARCH.tar.gz

echo 'export PATH=/usr/local/go/bin:$PATH' >> ~/.zshrc
export PATH=/usr/local/go/bin:$PATH

echo "Installing singularity"

sudo apt-get update && sudo apt-get install -y \
    build-essential \
    libssl-dev \
    uuid-dev \
    libgpgme11-dev \
    squashfs-tools \
    libseccomp-dev \
    wget \
    pkg-config \
    git \
    cryptsetup

export VERSION=3.5.3 && \
	wget https://github.com/sylabs/singularity/releases/download/v$VERSION/singularity-$VERSION.tar.gz && \
	tar -xzf singularity-$VERSION.tar.gz && \
	cd singularity && \
	./mconfig && \
	make -C builddir && \
	sudo make -C builddir install && \
	cd .. && rm singularity-$VERSION.tar.gz && \
	rm -r singularity
