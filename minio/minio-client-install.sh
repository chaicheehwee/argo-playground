# curl https://dl.min.io/client/mc/release/linux-amd64/mc \
#   --create-dirs \
#   -o $HOME/minio-binaries/mc

# chmod +x $HOME/minio-binaries/mc
# export PATH=$PATH:$HOME/minio-binaries/

# mc --help

# # Detect OS
# ARGO_OS="darwin"
# if [[ "$(uname -s)" != "Darwin" ]]; then
#   ARGO_OS="linux"
# fi

# Download the binary
curl -sLO https://dl.min.io/client/mc/release/linux-amd64/mc

# Make binary executable
sudo chmod +x mc

# Move binary to path
sudo mv mc /usr/local/bin/mc

# Test installation
mc --help